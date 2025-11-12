# PrestaShop Deployment — Bincom Section 5 Documentation

## 1. Challenge & Background
I originally planned to deploy PrestaShop on **AWS Free Tier** because I am very familiar with AWS — I’ve done multiple projects and deployments there. However, I faced several challenges:

- My AWS account kept getting **suspended**, and most of my payment cards were **not accepted**.  
- I tried alternative cloud providers, but due to configuration limits or restrictions, they didn’t fit this project.  
- Finally, I decided to use **Render Free Tier**, which allowed me to deploy my PrestaShop instance successfully.

⚠️ **Note:** Render Free Tier does not provide a built-in MySQL database. Normally, the database would be hosted separately (like AWS RDS). For this exercise, the deployment demonstrates my ability to **set up and deploy a fully functional PHP/PrestaShop application** with a publicly accessible URL.

---

## 2. Step-by-Step Deployment Process

### Step 1: Create a Render Account
1. Signed up on [Render](https://render.com/) with a free account.  
2. Verified email and logged into the dashboard.

### Step 2: Prepare the PrestaShop Docker Repository
1. Cloned the GitHub repository for PrestaShop Docker deployment:  
   `https://github.com/jmcoded0/prestashop-deploy-test`
2. Reviewed the Dockerfile to understand the app setup (PHP 8.2 + Apache).  

### Step 3: Deploy on Render
1. Created a **New Web Service** on Render using Docker.  
2. Connected the repository and selected the `main` branch.  
3. Render automatically built the Docker image and started the PHP/Apache server.  
4. Monitored the logs to ensure the service started correctly — no errors during deployment.  

### Step 4: Live App & Testing
- **Public URL:** [https://prestashop-deploy-test.onrender.com](https://prestashop-deploy-test.onrender.com)  
- Confirmed the PrestaShop homepage loads successfully.  
- Tested basic navigation to ensure the app is functional.

---

## 3. Database Considerations
- Render Free Tier does not provide a managed MySQL database.  
- In production, the **database should be hosted separately** (AWS RDS, MySQL on another server, or another managed service).  
- The main focus of this deployment is to demonstrate **containerized app deployment, version control, and public accessibility** — key infrastructure and DevOps skills.

---

## 4. Screenshots & Evidence

- **Render Web Service Dashboard**  
![Render Dashboard](https://github.com/user-attachments/assets/4de1ee5a-53dd-4936-ae90-538bec652af0)

- **Docker build logs**  
![Docker Logs](https://github.com/user-attachments/assets/04c2ea69-e5ce-4af3-a6d6-dc941c595d1e)

- **Live PrestaShop Homepage**  
![PrestaShop Homepage](https://github.com/user-attachments/assets/cd574c0b-e2d6-443a-a352-56a1f2570e0b)

- **Repository Structure (Dockerfile, configs, index.php, composer.json)**  
![Repo Structure](https://github.com/user-attachments/assets/63ac3d06-6db9-4285-9f39-6ce6ee8fb2f0)

---

## 5. Key Learnings & Notes
- Cloud provider limitations may require alternative solutions (Render instead of AWS in this case).  
- Containerized deployment ensures consistency and reproducibility.  
- Understanding the separation of application and database is critical in real-world infrastructure setups.  
- Keeping a clear step-by-step process with screenshots strengthens documentation and replicability.

---

**Live App Link:** [https://prestashop-deploy-test.onrender.com](https://prestashop-deploy-test.onrender.com)
