# E-commerce Website (Docker & Kubernetes)

This project demonstrates the design and deployment of a **scalable e-commerce application** using **Flask**, **Docker**, and **Kubernetes**.

---

## 🌟 **Project Highlights**

- **Containerized Deployment**:  
  Optimized Docker image with a size of **124 MB** for efficient deployment.
  
- **Kubernetes Deployment**:  
  Configured **3 replicas** for load balancing and fault tolerance. Enabled pod scaling to handle **50+ concurrent requests**.

- **High Availability**:  
  Deployed with a **LoadBalancer Service**, achieving **99.9% uptime**.

---

## 📂 **Project Structure**

- **Application**: Flask-based e-commerce application, with integration of Razorpay for payment processing.
- **Docker**: Used for containerizing the application.
- **Kubernetes**: Orchestrates the containerized application with scaling and service management.

---

## 📋 **Tech Stack**

- **Backend Framework**: Flask (Python)  
- **Containerization**: Docker  
- **Orchestration**: Kubernetes  
- **Payment Integration**: Razorpay  

---

## 🛠 **Setup Instructions**

### **1. Clone the Repository**
```bash
git clone https://github.com/your-repo/ecommerce-website.git
cd ecommerce-website
```

---

### **2. Build and Run with Docker**
```bash
docker build -t flask-ecommerce-app .
docker run -d -p 5000:5000 flask-ecommerce-app
```
**Access the Application**:
Open your browser and navigate to `http://localhost:5000`.

---

### **3. Deploy on Kubernetes**
1. Apply Deployment:
  ```bash
  kubectl apply -f deployment.yaml
  ```
2. Apply Service:
  ```bash
  kubectl apply -f service.yaml
  ```
3. Verify Deployment and Service:
  ```bash
  kubectl get pods
  kubectl get services
  ```
4. Access the Application:
   Once the service is up, note the external IP of the LoadBalancer service and access the application at:
   `http://(external-ip):5000`.

