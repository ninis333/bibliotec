import mysql from "mysql2/promise";

// ============================
//  Conexão com o MariaDB
// ============================

let db = null;

async function connectDatabase() {
  try {
    db = await mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "senai",
      database: "bibliotec",
      port: 3306,
    });
    console.log("✅ Conectado ao banco de dados bibliotec!");
  } catch (error) {
    console.error("❌ Erro ao conectar ao banco de dados:", error.message);
    throw error;
  }
}

function getDb() {
  if (!db) {
    throw new Error("Database connection not initialized. Call connectDatabase() first.");
  }
  return db;
}

export { connectDatabase, getDb };