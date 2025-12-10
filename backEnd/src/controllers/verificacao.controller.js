import e from "express";
import { db } from "../config/db.js";
import bcrypt from "bcrypt"

export async function criarCodigo(req, res) {
    try {
        const { email } = req.body;
        if (!email)
            return res.status(400).json({ erro: "Campo email é obrigatório" });

        await db.execute(
            "SELECT * FROM tabela_usuario WHERE email = ?",
            [email]
        ).then(([rows]) => {
            if (rows.length === 0) {
                return res.status(404).json({ erro: "Usuário não encontrado" });
            }
        });
        const codigo = Math.floor(100000 + Math.random() * 900000).toString();
        const agora = new Date();
        const expiracao = new Date(agora.getTime() + 15 * 60000);
        const agoraFormatada = agora
            .toLocaleString("sv-SE", { hour12: false })
            .replace(",", "");
        const expiracaoFormatada = expiracao
            .toLocaleString("sv-SE", { hour12: false })
            .replace(",", "");
        await db.execute(
            "INSERT INTO tabela_verificacao (email, codigo, criado_em, expiracao) VALUES (?, ?, ?, ?)",
            [email, codigo, agoraFormatada, expiracaoFormatada]
        );
        res.status(201).json({ mensagem: "Código criado com sucesso!", codigo });
    } catch (err) {
        console.error("❌ ERRO AO CRIAR CÓDIGO:", err);
        res.status(500).json({ erro: err.message });
    }
}

export async function verificarCodigo(req, res) {
    try {
        const { email, codigo } = req.body;
        if (!email || !codigo)
            return res.status(400).json({ erro: "Campos obrigatórios" });
        const [rows] = await db.execute(
            "SELECT * FROM tabela_verificacao WHERE email = ? AND codigo = ? ORDER BY criado_em DESC LIMIT 1",
            [email, codigo]
        );
        if (rows.length === 0) {
            return res.status(404).json({ erro: "Código inválido" });
        }
        const agora = new Date();
        const expiracao = new Date(rows[0].expiracao);
        if (agora > expiracao) {
            return res.status(400).json({ erro: "Código expirado" });
        }
        res.json({ mensagem: "Código verificado com sucesso!" });
    } catch (err) {
        res.status(500).json({ erro: err.message });
    }
};


export async function limparCodigosAntigos() {
    try {
        const agora = new Date();
        const agoraFormatada = agora
            .toLocaleString("sv-SE", { hour12: false })
            .replace(",", "");
        await db.execute(
            "DELETE FROM tabela_verificacao WHERE expiracao < ?",
            [agoraFormatada]
        );
        console.log("🧹 Códigos antigos limpos com sucesso!");
    } catch (err) {
        console.error("❌ ERRO AO LIMPAR CÓDIGOS ANTIGOS:", err);
    }
}

// Agendar a limpeza de códigos antigos a cada hora
setInterval(limparCodigosAntigos, 60 * 60 * 1000);

export async function atualizarSenha(req, res) { {
    try {
        const { aluno_id } = req.params;
        const { nova_senha } = req.body;
        if (!nova_senha)
            return res.status(400).json({ erro: "Campo nova_senha é obrigatório" });
        const hashedPassword = await bcrypt.hash(nova_senha, 10)
        await db.execute(
            "UPDATE tabela_login SET senha = ? WHERE aluno_id = ?",
            [hashedPassword, aluno_id]
        );
        res.json({ mensagem: "Senha atualizada com sucesso!" });
    } catch (err) {
        console.error("❌ ERRO AO ATUALIZAR SENHA:", err);
        res.status(500).json({ erro: err.message });
    }
}}