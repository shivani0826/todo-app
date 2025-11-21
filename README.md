# 📌 To-Do Application (Flask + Docker + AWS EC2 Deployment)

A complete, production-ready **To-Do Web Application** built using **Flask**, containerized using **Docker**, and deployed on **AWS EC2**.  
This project represents real-time DevOps workflow including development, containerization, cloud deployment, version control, and best practices.

---

**🚀 Project Overview**

This application allows users to:
- Add tasks  
- Delete tasks  
- View all tasks  
- Interact with a simple, responsive UI  

The entire app is Dockerized and deployed on an AWS EC2 Ubuntu instance.

---

**🏗️ Architecture**
Flask App → Docker Image → Docker Hub → AWS EC2 → Public Website


---

**🔧 Technologies Used**

| Category | Tools |
|---------|-------|
| **Backend** | Python, Flask |
| **Frontend** | HTML, CSS, Jinja2 |
| **Containerization** | Docker, Docker Hub |
| **Cloud** | AWS EC2 (Ubuntu) |
| **Version Control** | Git, GitHub |

---

**📁 Project Structure**

todo-app/
│
├── app.py # Flask backend
├── Dockerfile # Image instructions
├── requirements.txt # Python dependencies
│
├── templates/
│ └── index.html # UI template
│
└── static/ (optional)


---

**🐳 Docker Commands**

### **Build Image**
```bash
docker build -t todo-app .

Tag Image
docker tag todo-app shivani000/todo-app:latest

Push to Docker Hub
docker push shivani000/todo-app:latest

AWS EC2 Deployment
Pull Docker Image
sudo docker pull shivani000/todo-app:latest

Run Container
sudo docker run -d -p 5000:5000 shivani000/todo-app:latest

Access Application
http://<EC2-Public-IP>:5000

Example:
http://3.80.86.115:5000/


**✨ Features**
Add new tasks
Delete tasks
Dockerized application
Hosted on AWS EC2
Simple UI
Clean folder structure

**🛡 Security Best Practices Followed**
Removed Terraform .tfstate files
Removed sensitive AWS credentials
Cleaned Git commit history
Added .gitignore
No secrets stored in repo


**🌱 Future Improvements**
Add database integration
Add user login system
Add CI/CD pipeline (GitHub Actions/Jenkins)
Add Kubernetes deployment option



**👩‍💻 Author**
Shivani Reddy Vajrala
DevOps Engineer | Docker | AWS | Cloud
GitHub: https://github.com/shivani0826
