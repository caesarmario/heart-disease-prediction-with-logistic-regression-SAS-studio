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
  <a href="https://www.kaggle.com/code/caesarmario/heart-disease-eda-prediction">
    <img src="https://img.shields.io/badge/-Similar%20Works%20on%20Kaggle-teal?style=flat&logo=kaggle&logoColor=deepblue&link=https://www.kaggle.com/code/caesarmario/heart-disease-eda-prediction" alt="Similar Works"/>
  </a>
</p>
<br>

## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Objectives](#-objectives)
  - [Data Set Description](#-data-set-description)
<!--
  - [EDA](#-eda)
      - [Data Sets Structure](#-data-sets-structure)
      - [Training Data Set](#-training-data-set)
          - [Univariate](#-univariate---training)
          - [Bivariate](#-bivariate---training)
      - [Testing Data Set](#-testing-data-set)
          - [Univariate](#-univariate---testing)
          - [Bivariate](#-bivariate---testing)
  - [Data Imputation](#-data-imputation)
  - [Logistic Regression Result](#-logistic-regression-result)
      - [Logistic Regression Summary](#-summary-of-logistic-regression)
      - [Model Output](#-logistic-regression-model-output)
      - [Prediction Output](#-prediction-output)
-->

## 🖋 About Project:
👉 This dataset contains information about contains diagnoses of heart disease patients. Machine learning model is needed in order <b>to determine whether a person has heart disease or not</b>.

## 📌 Objectives:
*   <b>Perform dataset exploration</b> using various type of visualizations.
*   <b>Perform EDA</b> on given dataset.
*   <b>Build logistic regression model</b> to predict heart disease status.

## 🧾 Data Set Description:
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

## 📊 EDA
### 🏛 Dataset Summary:
![Dataset Summary - 1](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Dataset%20Summary_1.png)<br>
![Dataset Summary - 2](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Dataset%20Summary_2.png)<br>

- As mentioned above, there are **14 variables** with **303 observations**.

### 📄 Dataset
#### ▶ Univariate - Categorical:
*   sex (Gender) <br>
![sex](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/1_sex.png)<br>
    - The distribution of **male patients are highest** compared to female patients.
<br><br>
*   cp (Chest Pain Type) <br>
![cp](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/2_cp.png)<br>
    - **Chest pain type 0 have the highest number** compared to other types of chest pain.
<br><br>
*   fbs (Fasting Blood Sugar) <br>
![fbs](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/3_fbs.png)<br>
    - It can be seen that the number of **patients with fasting blood sugar less than 120 mg/dl have the highest numbers**.
<br><br>
*   restecg (Resting Electrocardiographic Results) <br>
![restecg](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/4_restecg.png)<br>
    - Resting electrocardiographic with **results 1 and 0 has a higher distribution** than result 2.<br>
    - In addition, **result 1 has the highest distribution** compared to the other results.
<br><br>
*   exang (Exercise Induced Angina) <br>
![exang](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/5_exang.png)<br>
    - **Patients with no exercise induced angina are the highest** compared to patients with exercise induced angina.
<br><br>
*   slope (Slope of the Peak Exercise) <br>
![slope](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/6_slope.png)<br>
    - The distribution of **slope 1 and 2 are almost the same**.
    - Moreover, **slope 2 has the highest distribution** compared to others.
<br><br>
*   ca (Number of Major Vessels) <br>
![ca](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/7_ca.png)<br>
    - **People with 0 major vessel has the highest distribution** compared to others.
<br><br>
*   thal <br>
![thal](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/8_thal.png)<br>
    - **Patients with 2 "thal" has the highest distribution** compared to others.
<br><br>
*   target (Heart Diseases Status) <br>
![target](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Categorical/9_target.png)<br>
    - The total number of **patients that have heart diseases** are higher than patients that have no heart diseases.
<br><br>

#### ▶ Univariate - Numerical:
*   age (Patient Age) <br>
![age](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/1_age.png)<br>
    - From the **histogram and boxplot**, it can be seen that this column is **normally distributed**. This also proven by **skewness value (-0.2)** of this column.
    - In this column, the **kurtosis value is -0.5**, which indicates that the column is platikurtic.
    - From the Q-Q plot, **the data values tend to closely follow the 45-degree**, which means the data is likely **normally distributed** (as stated previously).
<br><br>
*   trestbps (Resting Blood Pressure in mm Hg) <br>
![trestbps](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/2_trestbps.png)<br>
    - From the **histogram**, it can be seen that this column is **moderatly right skewed**. This also proven by **skewness value (0.7)** of this column.
    - There are some **outliers detected** at the upper part of boxplot.
    - At the upper part of Q-Q plot, **the data values tend to move away from 45-degree** (there is a gap at upper part of Q-Q plot with 45-degree line), which means the data is likely **moderatly right skewed** (as stated previously).
    - In this column, **the kurtosis value is 0.9**, which indicates that the column is **platikurtic**.
<br><br>
*   chol (Serum Cholestoral in mg/dl) <br>
![chol](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/3_chol.png)<br>
    - From the **histogram**, it can be seen that this column is **highly right skewed**. This also proven by **skewness value (1.1)** of this column.
    - There are some **outliers detected** at the upper part of boxplot.
    - At the upper part of Q-Q plot, **there is a gap at upper part of Q-Q plot with 45-degree line**, which means the data is likely **highly right skewed** (as stated previously).
    - In this column, **the kurtosis value is 4.5**, which indicates that the column is **leptokurtic**.
<br><br>
*   thalach (Maximum Heart Rate) <br>
![thalach](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/4_thalach.png)<br>
    - From the **histogram**, it can be seen that this column is **moderatly left skewed**. This also proven by **skewness value (-0.5)** of this column.
    - There is **an outlier detected** at the bottom part of boxplot.
    - At the upper part of Q-Q plot, **there is a gap at bottom part of Q-Q plot with 45-degree line**, which means the data is likely **moderatly left skewed** (as stated previously).
    - In this column, **the kurtosis value is -0.06**, which indicates that the column is **platikurtic**.
<br><br>
*   oldpeak <br>
![oldpeak](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/Univariate%20Analysis/Numerical/5_oldpeak.png)<br>
    - From the **histogram**, it can be seen that this column is **highly right skewed**. This also proven by **skewness value (1.3)** of this column.
    - There are **some outliers detected** at the upper part of boxplot.
    - At the upper part of Q-Q plot, **there is a gap at bottom part of Q-Q plot with 45-degree line**, which means the data is likely **highly right skewed** (as stated previously).
    - In this column, **the kurtosis value is 1.57**, which indicates that the column is **platikurtic**.
<br><br>

### 1️⃣ EDA 1
![EDA1](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_1.png)<br>

### 2️⃣ EDA 2
![EDA2](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_2.png)<br>

### 3️⃣ EDA 3
![EDA3](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_3.png)<br>

### 4️⃣ EDA 4
![EDA4](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_4.png)<br>

### 5️⃣ EDA 5
![EDA5](https://github.com/caesarmario/heart-disease-prediction-with-logistic-regression-SAS-studio/blob/main/Screenshot/EDA/EDA_5.png)<br>


## 👨‍💻 Logistic Regression Result:
### ▶ Summary of Logistic Regression:
![LR - 1](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%201.png)<br>
    👉 The dataset on which the model was built has been correctly cleaned. <br>
    👉 There are no more missing values (the number of observations reads and used is the same enabling the model to use every observation in the dataset). <br>
    👉 The response profile reveals a highly unbalanced percentage between the two classes within the dependent variable, loan approval status, with a ratio of about 1:2 between N and Y. <br>
![LR - 2](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%202.png)<br>
    👉 The Convergence Status of the Model is “Satisfied,” and the AIC value is smaller than SC. <br>
    👉 These two examples demonstrate that the Logistic Regression Model is an effective predictor. <br>
![LR - 3](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%203.png)<br>
    👉 It can be seen that marital status, loan history, and loan location has a significant correlation to loan approval status since the p-value is less than 0.05. <br>
![LR - 4](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%204.png)<br>
    👉 The p-value column “Pr > ChiSq” indicates that not all variables in the model are significant. <br>
    👉 A p-value of less than 0.05 indicates that the variable significantly affects loan approval status variation. <br>
    👉 Loan location and marital status impact loan approval choices. <br>
    👉 It can be observed that work status and gender have little impact on loan approval results. <br>

### ▶ Logistic Regression Model Output:
![LR Model Output](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Model%20Output.png)<br>
    👉 There are extra columns at the end of the dataset and the standard variables. <br>
    👉 Each column contains an estimated result from the model together with the estimated probability. <br>
    
### ⚠ Prediction Output:
![Prediction Output](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Prediction%20Output.png)<br>
    👉 There is 1 new column showing the results of the status prediction output from the loan approval. <br>
    👉 In addition, in addition to the new column that has been created, there is a probability of the loan application being rejected (N) and a probability of the loan application being accepted (Y).
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

## 🙌 Support me!

👉 If you find this project useful, **please ⭐ this repository 😆**!
### 🎈 Check out my work on Kaggle [here](https://www.kaggle.com/code/caesarmario/heart-disease-eda-prediction) using **various machine learning models**!
---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_
