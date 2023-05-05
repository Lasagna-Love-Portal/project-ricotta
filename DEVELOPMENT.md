# Development Information and Instructions

## Getting Started

### Development Dependencies  

The primary tool used for building and running this repository is [Docker](https://www.docker.com).

Some tasks may require the usage of a local [npm](https://www.npmjs.com/package/npm) installation, but we hope to remove that in the future.

For Windows users:
You can install Docker Desktop from [Docker](https://docs.docker.com/desktop/install/windows-install/).
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
2. `docker compose up --build --wait` at the root of the repository.
3. Make a request to the app (`curl` or in a browser): `localhost:3000`.
4. `docker compose down` to stop the app.

### Viewing container logs

1. Start the app (see above).
2. `docker compose logs` at the root of the repository. (Add `-f` at the end to stream the logs)

### Enabling "hot reloading"

1. Ensure `experimental docker features` are enabled
   1. Open the docker dashboard UI
   2. Ensure you have >= v4.19.0 (bottom-left of window)
   3. Settings (gear in top-right) -> "Features in development" -> "Experimental features" -> ensure "Access experimental features" is checked.
   4. "Apply and restart"
2. Start the app (see above).
3. `docker compose alpha watch` at the root of the repository.
4. Any saved changes to `src/`, `public/`, or `package.json` should be reflected in the running application.

> note: this uses a docker feature currently in alpha, which may change without notice. If this stops working, please notify the maintainers of this repository so that we can make any needed changes.

<!-- Note to maintainers: In the event that this stops working, we will likely want to switch to volume bind-mounting the relevant files. That comes with a potential sync performance tradeoff on macOS. -->

### Execute commands inside the container

If you need to execute a command inside the application's environment (such as for debugging):
1. Start the app (see above).
2. `docker compose exec frontend /bin/sh` at the root of the repository.

## Architecture

Software Stack:
- react
- next.js
- docker
