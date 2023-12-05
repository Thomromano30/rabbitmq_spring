Spring + RabbitMQ project
---
To set up the project, go in the main project folder and run
`docker compose up -d`

Testing the API
---

For testing send:

a **GET** request to:
`https://localhost:8080/api/v1/publish?message=`{YOUR_MESSAGE}

a **POST** request to:
`https://localhost:8080/api/v1/publish`
with the following JSON structure
```
{
    "id": "1",
    "firstName":"{Your First Name}",
    "lastName":"{Your Last Name}"
}
```

