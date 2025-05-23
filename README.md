# PHP Composer Project Builder

This project provides a clean, isolated way to create PHP applications (e.g. Slim, Laravel) using Composer **inside Docker**, without installing PHP or Composer on your host machine.

## 🚀 Features

- No Composer or PHP required locally
- Uses `composer create-project` inside Docker
- Outputs the generated app into the `./app/` directory
- Ideal for clean setups, CI/CD, or portable workflows

## 🧱 Project Structure

├── Dockerfile.create-project # Lightweight image for running composer create-project
├── create-project.sh # Script to generate a PHP project into ./app/
└── app/ # Generated project is saved here

## 📦 Requirements

- [Docker](https://www.docker.com/products/docker-desktop)

## 🛠️ Usage

### 1. Make the script executable:

```bash
chmod +x create-project.sh
```

### 2. Create the project:
```
./create-project.sh slim/slim-skeleton my-app
```
