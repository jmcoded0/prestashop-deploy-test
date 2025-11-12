># PrestaShop Deployment Bincom Section 5 Documentation

## 1. Challenge & Background
I originally planned to deploy PrestaShop on **AWS Free Tier** because I am very familiar with AWS — I’ve done multiple deep projects and deployments there. However, I faced several challenges:

- My AWS account kept getting **suspended**, and all of my payment cards were **not accepted**.  
- I tried alternative cloud providers, but due to configuration limits or restrictions, they didn’t fit this project.  
- Finally, I decided to use **Render Free Tier**, which allowed me to deploy my PrestaShop instance successfully.

⚠️ **Note:** Render Free Tier does not provide a built-in MySQL database option. Normally, the database would be hosted separately on a managed service (like AWS RDS). For this exercise, the deployment demonstrates my ability to **set up and deploy a fully functional PHP/PrestaShop application** with a publicly accessible URL.

---

## 2. Step-by-Step Deployment Process

### Step 1: Create a Render Account
1. Signed up on [Render](https://render.com/) with a free account.  
2. Verified email and logged into the dashboard.

### Step 2: Prepare the PrestaShop Docker Repository
1. Cloned the GitHub repository for PrestaShop Docker deployment:  
https://github.com/jmcoded0/prestashop-deploy-test
2. Reviewed the Dockerfile to understand the app setup (PHP 8.2 + Apache).  

### Step 3: Deploy on Render
1. Created a **New Web Service** on Render using Docker.  
2. Connected the repository to Render and selected the `main` branch.  
3. Render automatically built the Docker image and started the PHP/Apache server.  
4. Monitored the logs to ensure the service started correctly — no errors during deployment.  

### Step 4: Live App & Testing
- **Public URL:**  

- Confirmed the PrestaShop homepage loads successfully.  
- Tested basic navigation to ensure the app is functional.

---

## 3. Database Considerations
- Render Free Tier does not provide MySQL in the same dashboard.  
- In a production scenario, the **database would be hosted separately** (AWS RDS, MySQL on another server, or another managed service).  
- The main focus of this deployment is to demonstrate **containerized app deployment, version control, and public accessibility** — skills relevant to infrastructure and DevOps.

---

## 4. Screenshots & Evidence
*(Add screenshots in a folder named `screenshots/` and reference them below)*

- **Render Web Service Dashboard**  
![Render Dashboard] <img width="960" height="505" alt="image" src="https://github.com/user-attachments/assets/4de1ee5a-53dd-4936-ae90-538bec652af0" />


- **Docker build logs**  
![Docker Logs]<img width="960" height="505" alt="image" src="https://github.com/user-attachments/assets/04c2ea69-e5ce-4af3-a6d6-dc941c595d1e" />


- **Live PrestaShop URL**  
![PrestaShop Homepage]<img width="960" height="540" alt="image" src="https://github.com/user-attachments/assets/cd574c0b-e2d6-443a-a352-56a1f2570e0b" />


- **Repository structure** (Dockerfile, configs)  
![Repo Structure](screenshots/repo_structure.png)

---

## 5. Key Learnings & Notes
- Cloud provider limitations may require alternative solutions (Render instead of AWS in this case).  
- Containerized deployment ensures consistency and reproducibility.  
- Understanding separation of application and database is critical in real-world infrastructure setups.  

---

**Live App Link:** [https://prestashop-deploy-test.onrender.com](https://prestashop-deploy-test.onrender.com)
