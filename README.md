# Gau Platform Deployment Automation

A simple repository to easily automate and deploy the Gau Platform on different cloud environments. It supports both Kubernetes and Docker Compose, allowing smooth setup of microservices on minimal resources (1 CPU core, 2GB RAM) and can handle 200+ concurrent users. The setup is portable and easy to reuse across environments, with better performance on higher-spec servers.

---

## Key Features

| Feature                     | Description                                                               |
|-----------------------------|---------------------------------------------------------------------------|
| Dual Deployment Support      | Supports Kubernetes or Docker Compose for deployment of microservices    |
| Automation                  | Streamlined redeployment and configuration management                    |
| Resource Adaptability       | Deploys based on available cloud server resources (CPU, RAM)             |
| Scalability                | Kubernetes manifests with autoscaling support for growing user loads      |
| High Concurrency Support   | Designed to support at least 200 concurrent users with minimum resources  |

---

## Minimum Requirements

| Resource                   | Minimum Specification                                                    |
|----------------------------|--------------------------------------------------------------------------|
| CPU                       | 1 Core                                                                   |
| Memory                    | 2 GB RAM                                                                 |
| Concurrent Users Supported| At least 200 simultaneous users                                         |

> ⚠️ **Note:** Higher server configurations will significantly improve performance and scalability.

---

## Deployment Options

| Option                    | Description                                                             |
|---------------------------|-------------------------------------------------------------------------|
| Docker Compose            | Quick setup for microservices on lightweight or limited resource servers |
| Kubernetes (k3s, k3d, etc.)| Scalable, production-grade deployment with autoscaling and ingress    |

---

## Getting Started

### Docker Compose Deployment

1. Navigate to the `docker-compose` directory (if available).
2. Run:

   ```bash
   docker-compose up -d
    ```
   Access services via configured ports.

### Kubernetes Deployment

1. Ensure you have a Kubernetes cluster (k3s, k3d, or standard Kubernetes).

2. Clone the repository and navigate to the Kubernetes manifests directory:
    ```bash
    cd gau_platform/k8s/production
   ./deploy.sh
   ```
3. Apply the Kubernetes manifests:
    ```bash
    ./deploy.sh
    ```
4. Verify deployment and ingress.

## Configuration
- Customize environment variables via ConfigMaps and Secrets.
- Adjust resource requests and limits to optimize for your server capacity.

## Contributing

Contributions, bug reports, and feature requests are welcome.

### License
MIT License

---

If you have any questions, need help configuring your own setup, or would like an example `docker-compose.yml`, feel free to reach out!

📧 Email: [quocbao.job106204@gmail.com](mailto:quocbao.job106204@gmail.com)  
💬 Discord: [trannguyenquocbao](https://discord.gg/VRyfTs6p)
