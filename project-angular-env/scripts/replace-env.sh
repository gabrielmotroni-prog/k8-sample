#!/bin/sh

# Define valores padrão se as variáveis não estiverem definidas
URL_IMAGEM=${URL_IMAGEM:-'https://avatars.githubusercontent.com/u/60718584?v=4'}

# Encontra todos os arquivos JS no diretório de distribuição e substitui as variáveis
find /usr/share/nginx/html -name "*.js" -exec sed -i "s|\${URL_IMAGEM}|${URL_IMAGEM}|g" {} \;

echo "Variáveis de ambiente substituídas:"
echo "URL_IMAGEM: ${URL_IMAGEM}"
