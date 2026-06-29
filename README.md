# DevOps Internship - Task 1: Automated App Deployment

## What is this project?
This project is a simple web application that automatically tests, builds, and deploys itself every time I push new updates to GitHub! 

Instead of manually building Docker images and uploading them myself, I created an automated pipeline using **GitHub Actions**.

## Tools Used
* **Git & GitHub** - For managing code and tracking changes.
* **GitHub Actions** - The automation engine that runs the background jobs.
* **Docker & DockerHub** - For packaging the web application so it can run smoothly anywhere.
* **Node.js** - The simple web application used for this demo.

## How the Pipeline Works (Step-by-Step)
Every time code is pushed to the `main` branch, GitHub kicks off a 2-step pipeline:

1. **Test & Build Phase:** GitHub spins up a temporary cloud server, downloads the code, installs the required dependencies, and runs automated tests to make sure nothing is broken.
2. **Deploy to DockerHub Phase:** If the tests pass, GitHub safely logs into my DockerHub account (using hidden repository secrets), builds a new Docker container image, and pushes it directly to my DockerHub repository.

## Project Structure
* `.github/workflows/main.yml` — The automation script (the pipeline recipe).
* `Dockerfile` — The instructions that tell Docker how to bundle the app.
* `server.js` & `package.json` — A lightweight Node.js web application.
