## Backend de Cursos
Uma aplicação REST com o objetivo de gerenciar cursos e treinamentos

## Instruções
#### Executando com o Docker

##### Construa a imagem
    docker-compose build
##### Execute com docker-compose
    docker-compose up

### Método alternativo
##### Execute o PHP de forma manual
    php -S 0.0.0.0:8000
##### Execute sua instância do MySQL e importe o arquivo dump.sql e basta alterar as configurações de conexão em config/database.php de acordo com o seu banco.

## Rotas
##### Listar todos os cursos existentes.
	GET - /api/course
##### Listar um curso específico.
	GET - /api/course/:id
##### Criar um curso.
	POST - /api/course
	Parâmetros: 
	- title : Título do curso. (Obrigatório)
	- course_desc: Descrição do curso. (Obrigatório)
	- course_img: Imagem do curso. (Obrigatório)
##### Editar um curso.
	PUT - /api/course/:id
	Parâmetros: 
	- title : Título do curso.
	- course_desc: Descrição do curso.
	- course_img: Imagem do curso.
##### Excluir um curso.
	DELETE - /api/course/:id


