const express = require("express");
const dotenv = require("dotenv");

// Carrega as variáveis de ambiente do arquivo .env
dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;
const NOME_ENV = process.env.NOME_ENV;

app.get("/", (req, res) => {
  res.send(`Hello, World! \n Nome: ${NOME_ENV}`);
});

app.get("/crash", (req, res) => {
  res.send("Simulando queda do container...");
  process.exit(1); // Encerra o processo com erro
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
