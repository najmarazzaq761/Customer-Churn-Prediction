# 🚀 **E-commerce Customer Churn Analysis & Prediction System**  



https://github.com/user-attachments/assets/6ca3f953-04e2-4bdb-b4a4-7c09dacb54b5


This open-source **E-commerce Customer Churn Analysis & Prediction System** enables businesses to analyze customer behavior, predict churn, and take proactive actions using cutting-edge Machine Learning (ML) and Data Science techniques.  

Built with Python, SQL, Apache Airflow, and Power BI, this system automates data processing, applies supervised & unsupervised learning, and presents insights via interactive dashboards.  

⭐ **Star this repository** if you're passionate about customer analytics & AI-driven retention strategies!  

---

## 🎯 **Why Customer Churn Analysis Matters?**  

✅ Reduce churn and improve long-term customer relationships.  
✅ Retaining existing customers is **5x cheaper** than acquiring new ones.  
✅ Leverage predictive modeling, NLP sentiment analysis, and clustering to segment and understand customers.  
✅ Personalize offers for at-risk customers with data-driven strategies.  

---

## 🚀 **Key Features**  
✅ **Data Preprocessing & Cleaning** – Handle missing values, feature engineering, outlier detection  
✅ **Exploratory Data Analysis (EDA)** – RFM analysis, correlation analysis, customer segmentation  
✅ **Predictive ML Models** – Implement Logistic Regression, Decision Trees, Random Forest, XGBoost 
✅ **Customer Segmentation** – Apply K-Means & DBSCAN clustering for personalized engagement  
✅ **Automated Workflows** – Use Apache Airflow for scheduled data processing  
✅ **Interactive Dashboards** – Power BI reports with real-time churn insights  
✅ **Model Deployment** – Deploy Model with Streamlit

---

### Designed For:  
- 🧑‍💻 **Data Scientists & ML Engineers** exploring real-world predictive modeling.  
- 📊 **Data Analysts & BI Developers** creating churn insights & visualizations.  
- 🛍 **E-commerce Businesses** optimizing customer engagement & retention.  
- 🚀 **AI/ML Enthusiasts** learning end-to-end machine learning workflows.  

---

### Data Architecture Diagram:  

![Data Architecture Diagram](https://github.com/dataseekho/eccomerce-churn-analysis/blob/main/images/Update%20E-commerce%20Customer%20Churn%20Analysis%20%26%20Prediction%20System.drawio.png)

---


## 🛠️ **Tech Stack & Tools Used**  
🚀 **Programming & Data Processing:** Python, Pandas, NumPy, SQL (PostgreSQL/MySQL)  
📊 **Data Visualization:** Power BI, Matplotlib, Seaborn  
🧠 **Machine Learning Models:** Logistic Regression, Random Forest, XGBoost, Deep Learning  
📡 **Workflow Automation:** Apache Airflow, GitHub CI/CD  
⚡  **Interactive Dashboards:** Power BI reports with real-time churn insights
📖 **NLP Sentiment Analysis:** Natural Language Toolkit (NLTK)  

---

## 📊 **Power BI Dashboards**  
📌 **Churn Prediction Dashboard** – Tracks churn risk & customer retention trends.  
📌 **Customer Segmentation Dashboard** – Visualizes high-risk customers & engagement levels.  

![Power BI Dashboard](https://github.com/dataseekho/eccomerce-churn-analysis/blob/main/images/Customer%20Segmentation%20Dashboard%20-%20Power%20BI.png)
---
<img width="621" alt="customer_churn_analysis" src="https://github.com/user-attachments/assets/a6cb7b25-75c6-4bc5-b06d-8472f1616b6c" />

-----

<img width="619" alt="customer_churn_analysis2" src="https://github.com/user-attachments/assets/62d068f8-1daf-44fe-87f7-da99c97a75c9" />


## 📂 **Project Structure**  

```
📦 Ecommerce-Customer-Churn-Analysis  
 ┣ 📂 data/               # Raw & processed datasets  
 ┃ ┣ 📂 raw/             # Raw data files  
 ┃ ┣ 📂 processed/       # Cleaned & preprocessed data  
 ┣ 📂 notebooks/          # Jupyter notebooks for EDA, ML, NLP  
 ┣ 📂 models/             # Trained ML models (saved)  
 ┣ 📂 dashboards/         # Power BI dashboard files  
 ┣ 📂 airflow_dags/       # Apache Airflow DAGs for automation  
 ┣ 📂 streamlit_app/      # Streamlit UI for model deployment  
 ┃ ┣ 📜 app.py           # Main Streamlit app  
 ┃ ┣ 📜 config.py        # Config settings for UI  
 ┣ 📂 sql_queries/        # SQL scripts for database operations  
 ┣ 📂 reports/            # Generated PDF reports  
 ┣ 📂 images/             # Visualizations, plots & UI screenshots  
 ┣ 📜 train_model.py      # ML model training script  
 ┣ 📜 requirements.txt    # Python dependencies  
 ┣ 📜 LICENSE             # License information  
 ┣ 📜 README.md           # Project documentation    
```
---

## 🔧 **Installation Guide**  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/DataSeekho/Ecommerce-Customer-Churn-Analysis.git
cd Ecommerce-Customer-Churn-Analysis
```

### 2️⃣ Install Dependencies  
```bash
pip install -r requirements.txt
```

### 3️⃣ Set Up Virtual Environment (Recommended)  
```bash
python -m venv churn_env  
source churn_env/bin/activate  # For Linux/macOS  
churn_env\Scripts\activate    # For Windows  
```

### 4️⃣ Initialize Apache Airflow (for automation)  
```bash
airflow db init  
airflow webserver --port 8080  
airflow scheduler  
```

### 5️⃣ Train ML Models  
```bash
python train_model.py  
```

### 6️⃣ Run Streamlit Dashboard  
```bash
streamlit run dashboard.py  
```
---

## 🤝 **Contributing to This Project**  
🚀 **We welcome contributions!** Whether it's adding new ML models, improving automation, or refining dashboards, your input is valuable.  

### How to Contribute:  
1. **Fork** this repository.  
2. **Create a new branch**:  
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes and commit**:  
   ```bash
   git commit -m "Added feature X"
   ```
4. **Push and open a pull request**.  

📢 Join discussions, suggest improvements, and collaborate with fellow contributors!  

---

## 📜 **License**  
This repository is licensed under the **MIT License** – feel free to use and modify, but give proper attribution!  

---

🚀 **Happy Coding & Predicting Customer Churn!** 🚀  
