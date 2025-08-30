# ToDo List API — Java (Spring Boot)

Este projeto espelha seu Go API, usando o mesmo MySQL/tabela `tasks`.

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

2. Configure credenciais em `src/main/resources/application.properties`.

3. Rode:
```bash
mvn spring-boot:run 
mvn clean package -U
mvn spring-boot:run

mvnw.cmd spring-boot:run # Windows
```

API:
- POST   /tasks
- GET    /tasks
- GET    /tasks/{id}
- PUT    /tasks/{id}
- DELETE /tasks/{id}

http://localhost:8081/tasks
Swagger UI → http://localhost:8081/swagger-ui.html

OpenAPI JSON → http://localhost:8081/v3/api-docs