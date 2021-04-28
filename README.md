# Laravel REST API with Sanctum Template

This is an example of a REST API using auth tokens with Laravel Sanctum. Follows REST standards and can contains bash scripts for quick setup.

## Setup Composer Packages

```bash
composer install
```

## Setup Enviroment Variables

### Using Bash Script

Run the `make-env.sh` in the `scripts` directory.

```bash
chmod +x ./scripts/make-env.sh
./scripts/make-env.sh
```

### Manually

If you prefer to do things manually:

Change the `.env.example` to `.env` and add your database info (sqllite)

```bash
DB_CONNECTION=sqlite
DB_HOST=127.0.0.1
DB_PORT=3306
```

## Setup Database

### Using Bash Script

Run the `setup-sqlite.sh` in the `scripts` directory.

```bash
chmod +x ./scripts/setup-sqlite.sh
./scripts/setup-sqlite.sh
```

### Manually

If you prefer to do things manually:

Create a `database.sqlite` file in the `datsbase` directory

## Running Project

```bash
php artisan serve
```

## Routes

```
# Public

GET   /api/products
GET   /api/products/:id

POST   /api/login
@body: email, password

POST   /api/register
@body: name, email, password, password_confirmation


# Protected

POST   /api/products
@body: name, slug, description, price

PUT   /api/products/:id
@body: ?name, ?slug, ?description, ?price

DELETE  /api/products/:id

POST    /api/logout
```

## Useful Commands

### Making a New Model

```bash
php artisan make:model Product --migration
php artisan migrate
```

### Migrating Database

```bash
php artisan migrate
```

### Make Controller

```bash
php artisan make:controller ProductController --api
```

### Show Routes

```bash
php artisan route:list
```
