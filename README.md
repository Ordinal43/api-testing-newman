# Newman Automation Test

This project is a simple automation test for Postman APIs made using **Newman** and **Docker Compose**.

This project uses the [vad1mo/hello-world-rest](https://hub.docker.com/r/vad1mo/hello-world-rest) Docker image for the REST API.

## Prerequisites

- [Docker Engine](https://docs.docker.com/engine/install/)

## Project structure

```
Newman Automation
    ├── README.md                       # README file
    ├── LICENSE                         # License file
    ├── compose.yml                     # Docker compose file
    └── src
        ├── postman_collection.json     # List of APIs to be tested with Newman
        ├── postman_environment.json    # Predefined environment variables from Postman
        └── run-test.sh                 # Script to run the test
```

## Setting up and running the test

1. Clone the Repository:
    ```bash
    git clone https://gitlab.com/ordinal43/newman-automation-test
    cd newman-automation-test
    ```
2. Start Docker Engine
3. Inside your repo just run this:
    ```bash
    docker compose up
    ```
4. Let the test run, then extract the results from inside the container to anywhere you want:
    ```bash
    docker cp postman-tests-newman:/app/report.html </your/target/directory>/report.html
    ```
5. IMPORTANT: Don't forget to shut down the docker compose by running:
    ```bash
    docker compose down
    ```
   If you don't do this the container will remain active and store the previous state.