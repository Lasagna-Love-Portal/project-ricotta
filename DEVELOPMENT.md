# Development Information and Instructions

## Getting Started

### Development Dependencies  

The primary tool used for building and running this repo is [Docker](https://www.docker.com).

Some tasks may require the usage of a local [npm](https://www.npmjs.com/package/npm) installation, but we hope to remove that in the future.

### Building and Running the app (dev mode)

<!-- todo: update when hot-reloading actually works -->
1. Ensure `docker` is installed.
2. `docker compose up` in the root of the repository. (Note: you may see `Watchpack Error`s in the logs. That's fine, don't worry about them.)
3. Make a request to the app (`curl` or in a browser): `localhost:3000`.
4. Make changes and save your work.
5. `ctrl + c` in the terminal where the app is running to stop the app.
6. `docker compose build && docker compose up` to rebuild and relaunch app.
7. To fully reset environment: `docker compose down` at root of repo.

### Execute commands inside the container

If you need to execute a command inside the application's environment (such as for debugging):
1. Ensure the application is running (`docker compose up`).
2. In a second window, `docker compose exec frontend /bin/sh` (at the root of the repo). 

## Architecture
 
Software Stack:
- react
- next.js
- docker
