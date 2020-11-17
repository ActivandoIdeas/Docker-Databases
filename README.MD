# Database Docker

* PostgreSQL + PgAdmin
* SQL Server

# How to use

## Add .env file

```env
USER=youruser
PASSWORD="yourpass"
DB=yourdb
PGUSEREMAIL="your@email.com"
```

## Run

```bash
docker-compose up
docker-compose postgres pgadmin
docker-compose sql-server
```