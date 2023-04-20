<h1 align="center">💕💔 Heart Disease EDA & Prediction 🔮</h1>
<p align="center">w/ <b>Logistic Regression</b> using <b>SAS Studio</b> 🖥</b></p><br>
<p align="center">
  <img src="https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99" alt="Star Badge"/>
  <a href="https://www.github.com/caesarmario">
    <img src="https://img.shields.io/github/followers/caesarmario?style=social&link=https://www.github.com/caesarmario" alt"GitHub"/>
  </a>
  <a href="https://linktr.ee/caesarmario_">
    <img src="https://img.shields.io/badge/Follow%20My%20Other%20Works-019875?style=flat&labelColor=019875&link=https:/linktr.ee/caesarmario_" alt="Linktree"/>
  </a>
  <a href="https://www.kaggle.com/code/caesarmario/listen-to-your-heart-a-disease-prediction">
    <img src="https://img.shields.io/badge/-Similar%20Works%20on%20Kaggle-teal?style=flat&logo=kaggle&logoColor=deepblue&link=https://www.kaggle.com/code/caesarmario/listen-to-your-heart-a-disease-prediction" alt="Similar Works"/>
  </a>
</p>
<br>

## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Objectives](#-objectives)
  - [Dataset Description](#-dataset-description)
      - [Dataset Summary](#-dataset-summary)
      - [Univariate Analysis](#-univariate-analysis)
          - [Categorical](#-univariate---categorical)
          - [Numerical](#-univariate---numerical)
      - [EDA 1](#1%EF%B8%8F⃣-eda-1)
      - [EDA 2](#2%EF%B8%8F⃣-eda-2)
      - [EDA 3](#3%EF%B8%8F⃣-eda-3)
      - [EDA 4](#4%EF%B8%8F⃣-eda-4)
      - [EDA 5](#5%EF%B8%8F⃣-eda-5)
  - [Dataset Pre-processing](#-dataset-pre-processing)
  - [Logistic Regression](#-logistic-regression)
      - [Building LR Model](#-building-logistic-regression-model)
      - [Probability in Training](#-probability-in-training)
      - [Probability in Testing](#-predictions-on-test)
  - [Output Delivery System (ODS)](#-output-delivery-system)

## 🖋 About Project:
👉 This dataset contains information about contains diagnoses of heart disease patients. Machine learning model is needed in order <b>to determine whether a person has heart disease or not</b>.

## 📌 Objectives:
*   <b>Perform dataset exploration</b> using various type of visualizations.
*   <b>Perform EDA</b> on given dataset.
*   <b>Build logistic regression model</b> to predict heart disease status.

## 🧾 Dataset Description:
👉 There are **14 variables in this dataset**:
  - **9** **categorical** variables, and
  - **5** **continuous** variables.

👉 The structure of the two datasets that have been given: <br><br>
<table style="width:100%">
  <thead>
    <tr>
      <th style="text-align:center; font-weight: bold; font-size:14px">Variable Name</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Description</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Sample Data</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td><b>Age</b></td>
    <td>Patient Age <br> (in years)</td>
    <td>63; 37; ...</td>
  </tr>
  <tr>
    <td><b>Sex</b></td>
    <td>Gender of patient <br> (0 = male; 1 = female)</td>
    <td>1; 0; ...</td>
  </tr>
  <tr>
    <td><b>cp</b></td>
    <td>Chest pain type <br> (4 values: 0, 1, 2, 3)</td>
    <td>3; 1; 2; ...</td>
  </tr>
  <tr>
    <td><b>trestbps</b></td>
    <td>resting blood pressure  <br> (in mm Hg)</td>
    <td>145; 130; ...</td>
  </tr>
  <tr>
    <td><b>chol</b></td>
    <td>Serum cholestoral <br> (in mg/dl)</td>
    <td>233; 250; ...</td>
  </tr>
  <tr>
    <td><b>fbs</b></td>
    <td>Fasting blood sugar &gt; 120 mg/dl <br> (1 = true; 0 = false) </td>
    <td>1; 0; ...</td>
  </tr>
  <tr>
    <td><b>restecg</b></td>
    <td>Resting electrocardiographic results <br> (values 0, 1, 2) </td>
    <td>0; 1; ...</td>
  </tr>
  <tr>
    <td><b>thalach</b></td>
    <td>Maximum heart rate achieved </td>
    <td>150; 187; ...</td>
  </tr>
  <tr>
    <td><b>exang</b></td>
    <td>Exercise induced angina <br> (1 = yes; 0 = no) </td>
    <td>1; 0; ...</td>
  </tr>
  <tr>
    <td><b>oldpeak</b></td>
    <td>ST depression induced by exercise relative to rest</td>
    <td>2.3; 3.5; ...</td>
  </tr>
  <tr>
    <td><b>slope</b></td>
    <td>The slope of the peak exercise ST segment<br> (values 0, 1, 2) </td>
    <td>0; 2; ...</td>
  </tr>
  <tr>
    <td><b>ca</b></td>
    <td>number of major vessels (0-4) colored by flourosopy </td>
    <td>0; 3; ...</td>
  </tr>
  <tr>
    <td><b>thal</b></td>
    <td>(3 = normal; 6 = fixed defect; 7 = reversable defect)</td>
    <td>1; 3; ...</td>
  </tr>
  <tr>
    <td><b>Target</b></td>
    <td>Target column<br> (1 = Yes; 0 = No) </td>
    <td>1; 0; ...</td>
  </tr>
</tbody>
</table>

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

## 📊 EDA:
### 🏛 Dataset Summary:
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Dataset%20Summary_1.png" width="60%" alt="Dataset Summary 1"><br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Dataset%20Summary_2.png" width="30%" alt="Dataset Summary 2"><br>
- As mentioned above, there are **14 variables** with **303 observations**.

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

### 🔍 Univariate Analysis:
#### ▶ Univariate - Categorical:
*   **sex (Gender)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/1_sex.png" width="40%" alt="sex - UVC"><br>
    - The distribution of **male patients are highest** compared to female patients.
<br><br>
*   **cp (Chest Pain Type)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/2_cp.png" width="40%" alt="cp - UVC"><br>
    - **Chest pain type 0 have the highest number** compared to other types of chest pain.
<br><br>
*   **fbs (Fasting Blood Sugar)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/3_fbs.png" width="40%" alt="fbs - UVC"><br>
    - It can be seen that the number of **patients with fasting blood sugar less than 120 mg/dl have the highest numbers**.
<br><br>
*   **restecg (Resting Electrocardiographic Results)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/4_restecg.png" width="40%" alt="restecg - UVC"><br>
    - Resting electrocardiographic with **results 1 and 0 has a higher distribution** than result 2.<br>
    - In addition, **result 1 has the highest distribution** compared to the other results.
<br><br>
*   **exang (Exercise Induced Angina)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/5_exang.png" width="40%" alt="exang - UVC"><br>
    - **Patients with no exercise induced angina are the highest** compared to patients with exercise induced angina.
<br><br>
*   **slope (Slope of the Peak Exercise)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/6_slope.png" width="40%" alt="slope - UVC"><br>
    - The distribution of **slope 1 and 2 are almost the same**.
    - Moreover, **slope 2 has the highest distribution** compared to others.
<br><br>
*   **ca (Number of Major Vessels)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/7_ca.png" width="40%" alt="ca - UVC"><br>
    - **People with 0 major vessel has the highest distribution** compared to others.
<br><br>
*   **thal** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/8_thal.png" width="40%" alt="thal - UVC"><br>
    - **Patients with 2 "thal" has the highest distribution** compared to others.
<br><br>
*   **target (Heart Diseases Status)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/9_target.png" width="40%" alt="target - UVC"><br>
    - The total number of **patients that have heart diseases** are higher than patients that have no heart diseases.

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

#### ▶ Univariate - Numerical:
*   **age (Patient Age)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/1_age.png" width="40%" alt="age - UNC"><br>
    - From the **histogram and boxplot**, it can be seen that this column is **normally distributed**. This also proven by **skewness value (-0.2)** of this column.
    - In this column, the **kurtosis value is -0.5**, which indicates that the column is platikurtic.
    - From the Q-Q plot, **the data values tend to closely follow the 45-degree**, which means the data is likely **normally distributed** (as stated previously).
<br><br>
*   **trestbps (Resting Blood Pressure in mm Hg)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/2_trestbps.png" width="40%" alt="trestbps - UNC"><br>
    - From the **histogram**, it can be seen that this column is **moderatly right skewed**. This also proven by **skewness value (0.7)** of this column.
    - There are some **outliers detected** at the upper part of boxplot.
    - At the upper part of Q-Q plot, **the data values tend to move away from 45-degree** (there is a gap at upper part of Q-Q plot with 45-degree line), which means the data is likely **moderatly right skewed** (as stated previously).
    - In this column, **the kurtosis value is 0.9**, which indicates that the column is **platikurtic**.
<br><br>
*   **chol (Serum Cholestoral in mg/dl)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/3_chol.png" width="40%" alt="chol - UNC"><br>
    - From the **histogram**, it can be seen that this column is **highly right skewed**. This also proven by **skewness value (1.1)** of this column.
    - There are some **outliers detected** at the upper part of boxplot.
    - At the upper part of Q-Q plot, **there is a gap at upper part of Q-Q plot with 45-degree line**, which means the data is likely **highly right skewed** (as stated previously).
    - In this column, **the kurtosis value is 4.5**, which indicates that the column is **leptokurtic**.
<br><br>
*   **thalach (Maximum Heart Rate)** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/4_thalach.png" width="40%" alt="thalach - UNC"><br>
    - From the **histogram**, it can be seen that this column is **moderatly left skewed**. This also proven by **skewness value (-0.5)** of this column.
    - There is **an outlier detected** at the bottom part of boxplot.
    - At the upper part of Q-Q plot, **there is a gap at bottom part of Q-Q plot with 45-degree line**, which means the data is likely **moderatly left skewed** (as stated previously).
    - In this column, **the kurtosis value is -0.06**, which indicates that the column is **platikurtic**.
<br><br>
*   **oldpeak** <br>
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/5_oldpeak.png" width="40%" alt="oldpeak - UNC"><br>
    - From the **histogram**, it can be seen that this column is **highly right skewed**. This also proven by **skewness value (1.3)** of this column.
    - There are **some outliers detected** at the upper part of boxplot.
    - At the upper part of Q-Q plot, **there is a gap at bottom part of Q-Q plot with 45-degree line**, which means the data is likely **highly right skewed** (as stated previously).
    - In this column, **the kurtosis value is 1.57**, which indicates that the column is **platikurtic**.

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

### 1️⃣ EDA 1:
![EDA1](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_1.png)<br>

### 2️⃣ EDA 2:
![EDA2](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_2.png)<br>

### 3️⃣ EDA 3:
![EDA3](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_3.png)<br>

### 4️⃣ EDA 4:
![EDA4](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_4.png)<br>

### 5️⃣ EDA 5:
![EDA5](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_5.png)<br>

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

## ⚙ Dataset Pre-processing:
- In the data pre-processing, **one-hot encoding performed for these columns**:
    - **cp** (into cp_0, cp_1, cp_2, and cp_3)
    - **thal** (into thal_0, thal_1, thal_2, and thal_3)
    - **slope** (into slope_0, slope_1, and slope_2)
- After one-hot encoding performed, **original columns (cp, thal, and slope) are dropped from the table**.
- Then, the observations will be **splitted into 80% train and 20% test** ratio using **`PROC SURVEYSELECT` technique**.
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/PROC_SURVEYSELECT.png" width="30%" alt="Split Data"><br>
- Next, the **new columns (`Selected`) will be dropped** in both train and test data.
- Finally, **the target values in test set will be change into `NULL` values**.
> Each step for data pre-processing are available on part no. 3 in `main.sas` file.

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

## 👨‍💻 Logistic Regression:
### ▶ Building Logistic Regression Model:
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Summary_Logistic_Model_1.png" width="30%" alt="Summary LR - 1"> <img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Summary_Logistic_Model_2.png" width="30%" alt="Summary LR - 2"> <img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Summary_Logistic_Model_3.png" width="30%" alt="Summary LR - 3"><br>
- [**Image 1**] - In train set, there are **243 observations** (no missing values detected). In addition, the number of patients with and without heart disease are **equally balanced**.
- [**Image 2**] - The "Model Convergence Status" is **Satisified**, indicates that the developed logistic regression is **good predictor in predicting patients status**. This convergence status also supported from **smaller AIC value compared to SC value**.
- [**Image 3**] - p-value under the column "Pr > ChiSq", that **not all variables are significant in the model**. The p-value **has to be less than 0.05** in order for the variable to be significantly impacting the variation in the heart disease status. (Example of great values for prediction: sex, cp_0, exang, etc.)

### ▶ Probability in Training:
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Prediction_in_training.png" width="80%" alt="Probability in Training"><br>
    
### ▶ Predictions on Test:
<img src="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Prediction_in_test.png" alt="Probability in Test">

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

## 📥 Output Delivery System:
- Output Delivery System (ODS) is used to present the output data from SAS program in the form of a nicely presented report which would hep the user to be able to understand the output of their analysis much easier. For this case, the prediction exported as PDF file (`.pdf`)
- **The prediction report can be seen** <b><i><u><a href="https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Heart_Disease_Prediction_Report_caesarmario.pdf">here</a></u></i></b>.
> Each step for creating output (ODS) file are available on part no. 5 in `main.sas` file.

[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br>

## 🙌 Support me!

👉 If you find this project useful, **please ⭐ this repository 😆**!
### 🎈 Check out my work on Kaggle [here](https://www.kaggle.com/code/caesarmario/listen-to-your-heart-a-disease-prediction) using **various machine learning models**!
---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_
