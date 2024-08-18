## Instrucciones

1. **Clonar el repositorio**:

   ```bash
   git clone https://github.com/Leonardofsirota/ProT4_36113735.git
   cd ProT4_36113735
   ```

2. **Instalar dependencias**:

   Ejecutar el siguiente comando para instalar todas las dependencias necesarias del proyecto:

   ```bash
   npm install
   ```

## Configuración

1. **Variables de entorno**:

   Crear un archivo `.env` en la raíz del proyecto y configurar las variables de entorno necesarias, tales como la conexión a la base de datos MySQL. Ejemplo de configuración:

   ```env
   DB_HOST=localhost
   DB_USER=root
   DB_PASSWORD=
   DB_NAME=libreria
   PORT=3000
   ```

2. **Configuración de la base de datos**:

   Asegurarse de que el servidor MySQL esté en funcionamiento y crear una base de datos llamada`libreria` con cotejamiento utf8mb4_general_ci. Luego, importar el archivo llamado 'libros.sql' dentro de la base de datos creada. Dentro de la BD debe aparecer la tabla llamada 'libros' la cual contiene elementos pre-cargados dispuestos para las pruebas.
   ```

## Explicación del Código

### `controller.js`

Este archivo contiene la lógica para manejar las solicitudes HTTP:

- **getAll**: Obtiene todos los libros de la base de datos y los devuelve en formato JSON.
- **getOne**: Obtiene un libro específico por su ID.
- **add**: Agrega un nuevo libro a la base de datos.
- **delete**: Elimina un libro específico por su ID.
- **update**: Actualiza los detalles de un libro existente por su ID.

### `routes.js`

Este archivo define las rutas que la API maneja:

- **GET /libros**: Obtiene todos los libros.
- **GET /libros/:id**: Obtiene un libro específico por su ID.
- **POST /libro**: Agrega un nuevo libro.
- **DELETE /libro**: Elimina un libro por su ID.
- **PUT /libro**: Actualiza un libro existente por su ID.

### `database.js`

Este archivo maneja la conexión a la base de datos MySQL utilizando `mysql2` y exporta un pool de conexiones para ser utilizado en las consultas.

```javascript
const mysqlConnection = require("mysql2/promise");

const properties = {
   host: 'localhost',
   user: 'root',
   password: '',
   database: 'libreria',
};

const pool = mysqlConnection.createPool(properties);

module.exports = pool;
```

## Pruebas

Se puede probar la API utilizando herramientas como **Postman**.

