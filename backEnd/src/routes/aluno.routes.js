import express from "express";
import { autenticar } from "../middlewares/auth.js";

import {
  criarAluno,
  listarAlunos,
  obterAlunos,
  atualizarAlunos,
  deletarAluno,
  adicionarFotoPerfil,
  obterFotoPerfil,
  listarApenasAlunos,
} from "../controllers/aluno.controller.js";

const router = express.Router();

router.get("/publica", (req, res) => {
  res.json({ msg: "Esta rota é pública" });
});

// ROTAS CRUD
router.post("/", autenticar, criarAluno); // só admin pode criar
router.get("/", autenticar, listarAlunos); // só admin pode listar todos
router.get("/apenas-alunos", autenticar, listarApenasAlunos); // qualquer usuário autenticado pode listar alunos
router.get("/:id", autenticar, obterAlunos); // qualquer usuário autenticado pode ver dados
router.put("/:id", autenticar, atualizarAlunos); // qualquer usuário autenticado pode atualizar seu próprio registro (ou admin)
router.delete("/:id", autenticar, deletarAluno); // só admin pode deletar
router.post("/foto-perfil", autenticar, adicionarFotoPerfil); // qualquer usuário autenticado pode adicionar foto
router.get("/foto-perfil/:id", autenticar, obterFotoPerfil); // qualquer usuário autenticado pode ver foto
export default router;
