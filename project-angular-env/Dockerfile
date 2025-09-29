# Etapa 1: Build da aplicação
FROM node:22-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build --configuration=production

# Verificar se os arquivos foram gerados
RUN ls -la dist/
RUN ls -la dist/project-angular-env/

# Etapa 2: Servir a aplicação com Nginx
FROM nginx:alpine

# Remove a configuração padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos gerados pelo Angular para o Nginx
COPY --from=builder /app/dist/project-angular-env/browser /usr/share/nginx/html


# Verifica se os arquivos foram copiados
RUN ls -la /usr/share/nginx/html/

# Copia uma configuração customizada do Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copia os scripts
COPY scripts/ /scripts/
RUN chmod +x /scripts/*.sh

# Copia o script de entrada
COPY scripts/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
