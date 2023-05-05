# Development Information and Instructions

## Getting Started

### Development Dependencies  

The primary tool used for building and running this repo is [Docker](https://www.docker.com).

Some tasks may require the usage of a local [npm](https://www.npmjs.com/package/npm) installation, but we hope to remove that in the future.

For Windows users:
You can install Docker Desktop from https://docs.docker.com/desktop/install/windows-install/.
When running on Windows, you'll need to ensure the Windows Subsystem for Linux (WSL) is installed and updated to WSL version 2. To do this:
1. Open a Powershell windows as administrator
2. Install WSL and a Linux distribution. To install Ubuntu 22.04:
    `wsl --install -d Ubuntu-22.04`
3. To make sure WSL is updated to WSL 2:
    `wsl --update`
4. Then make sure Docker Desktop sees the installed WSL and Linux distribution. In Docker Desktop's Settings | Resources | WSL integration, make sure the Ubuntu 22.04 distribution is enabled. You may need to hit Refresh and wait a minute or two for it to show. Once enabled, hit Apply & Restart to restart the Docker engine.

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
