# Terraform Docker

**Pré Requisitos**

- Terraform
- AWS CLI

## Configuração do Terraform

Antes de iniciar o projeto, é necessario executar ```terraform init```

Alterar o profile do provider da AWS de acordo com as suas configurações

## Configuração da AWS

É necessario gerar um par de chaves para conexão SSH e alterar o nome da chave no recurso do backend

## Configuração do Backend

Após os serviços estarem online, é necessario instalar o docker, usar este [link](https://www.notion.so/saitohbp/Instalando-Docker-no-Ubuntu-Server-a02d0e0551a248e8ac82f045776041e1) de referencia

Após instalar o docker, é necessario subir a imagem do backend

***Obs.*** *O repositorio usado para o backend é referente a outro projeto, porem a imagem ja passou por um processo de build e esta disponivel para utilização sem a necessidade de modificar a imagem*

***Obs.*** *É necessario alterar a variavel DB_URL para ficar de acordo com a instancia do banco de dados atual*

```shell
docker run -p 80:5000 -e SERVER_PORT=5000 -e DB_USER=postgres -e DB_PASSWORD=password -e DB_URL=terraform-20220607224419566000000004.cky5ttiocteg.us-east-1.rds.amazonaws.com -e DB_PORT=5432 -e DB_NAME=customers saitohbp/aws.simple.example.backend
```

## Fazendo as requisições

Usando Postman ou Insomnia é possivel fazer as requisições para teste

**GET** /api/customers

---

**POST** /api/customers
```json
{
  "name": "John Doe"
}
```