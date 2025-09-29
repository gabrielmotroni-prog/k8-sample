# dockerfile-projeto

Este projeto é uma aplicação Node.js simples que utiliza Docker para facilitar o desenvolvimento e a implantação.

## Estrutura do Projeto

- `src/app.js`: Ponto de entrada da aplicação, contendo a lógica principal.
- `Dockerfile`: Instruções para construir a imagem Docker da aplicação.
- `package.json`: Configuração do npm, listando dependências e scripts.
- `README.md`: Documentação do projeto.

## Como Executar

1. **Clone o repositório:**

   ```docker
   git clone <URL do repositório>
   cd dockerfile-projeto
   ```

2. **Construa a imagem Docker:**

   ```docker
   docker build -t k8-nodejs:v1  .
   ```

3. **Execute o contêiner:**

   ```docker
   docker container run -p 3000:3000 k8-nodejs:v1
   ```

4. **Acesse a aplicação:**
   Abra o navegador e vá para `http://localhost:3000`.

   Abra o navegador e vá para `http://localhost:3000/crash`.

## Publique a imagem no dockerhub

1. **taguei sua imagem**

```docker
tag k8-nodejs:v1 gabriesmotroni/k8-nodejs:v
```

1. **publique no dockerhub**

```docker
docker push gabriesmotroni/k8-nodejs:v1
```

## K8

1. **inicie um POD**

```docker
kubectl apply -f motroni-api.yaml --validate=false
kubectl apply -f svc-motroni-api.yaml --validate=false
```

2. **acompanhe**

```docker
kubectl get pods
```

3. **acesse**

```docker
