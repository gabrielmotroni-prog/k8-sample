#!/bin/sh

echo "Gerando env.js com variáveis do ambiente..."

# # escreve o env.js no diretório do nginx (/usr/share/nginx/html/assets/
# cat <<EOF > /usr/share/nginx/html/assets/env.js
# window.env = {
#   CLIENT_ID_MSAL: "${CLIENT_ID_MSAL}",
#   AUTHORITY_MSAL: "${AUTHORITY_MSAL}",
#   REDIRECT_URI_MSAL: "${REDIRECT_URI_MSAL}"
# };
# EOF

# echo "Arquivo env.js gerado:"
# cat /usr/share/nginx/html/assets/env.js

# Executa o nginx


# Executa o script de substituição de variáveis de ambiente
/scripts/replace-env.sh
exec "$@"
