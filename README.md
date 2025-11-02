# ToDo List API — Java (Spring Boot)
Ele é uma aplicação simples de gerenciamento de tarefas (TODO) usando Spring Boot para criar uma API RESTful e o MySQL como banco de dados.

## Passos

1. Crie o banco/tabela:
```sql
CREATE DATABASE IF NOT EXISTS todo_db;
CREATE TABLE IF NOT EXISTS tasks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  description TEXT NULL,
  completed TINYINT(1) NOT NULL DEFAULT 0
);
```

## Methods - Example - POSTMAN

Type|Rote|Description
-|-|-
POST|http://localhost:8081/tasks|Insert taks
GET|http://localhost:8081/tasks/3|Search one task
GET|http://localhost:8081/tasks|List all task
DELETE|http://localhost:8081/tasks/1|Delete task
PUT|http://localhost:8081/tasks/3|Update task

## Example - JSON - POST AND PUT
```
{
    "title": "test test test",
    "description": "Description xyz",
    "completed": true
}
```

## Summary

Index|Version|Description
-|-|-
ok-1.1|Versão 01|API num aquivo main.go, procedural, simples para ser tipo um arquivo macro, um unico arquivo.
ok-1.2|Versão 02|Evoluir ele para MVC, dividindo as responsabilidades
1.3|Versão 03|Uso de Access_token padrão JWT
1.4|Versão 05|micro serviço
1.5|Versão 06|teste unitário
1.6|Versão 07|FrontEnd - Angular

## Docs
Swagger UI → http://localhost:8081/swagger-ui.html

OpenAPI JSON → http://localhost:8081/v3/api-docs


## Commands
Configure credenciais em `src/main/resources/application.properties`.
```bash
mvn spring-boot:run 
mvn clean package -U
mvn spring-boot:run

mvnw.cmd spring-boot:run # Windows
```
