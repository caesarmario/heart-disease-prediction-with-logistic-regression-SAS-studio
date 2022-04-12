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
<br><br>

## 🧾 Data Set Description:
👉 There are **14 variables in this dataset**:
  - **9** **categorical** variables, and
  - **5** **continuous** variables.
<br>
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

<!--
## 📊 EDA:
### 🏛 Data Sets Structure:
![](X)

### ⚙ Training Data Set
#### ▶ Univariate - Training:
*   GENDER <br>
![GENDER](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)<br>
    - **13 LFI customers had an unidentified gender** due to missing values in the dataset.
    - Furthermore, the dataset has an **uneven distribution between male and female loan applicants**, with the percentage of male applicants is 81.36% (489 male applicants).
    - In comparison, the percentage of female applicants is only 18.64% (112 female applicants)
<br><br>

*   MARITAL_STATUS <br>
![MARITAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_MaritalStatus.png)<br>
    - **Three loan applicants** in the training dataset **had an unknown marital status** due to missing values.
    - The dataset has an **uneven distribution between married and not married loan applicants**, with the percentage of married applicants is 65.14% (398 married applicants).
    - In comparison, the percentage of not married applicants is only 34.86% (213 not married applicants)
<br><br>

*   FAMILY_MEMBERS <br>
![FAMILY_MEMBERS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_FamilyMembers.png)<br>
    - **15 loan applicants in the training dataset had an unidentified number of family members** due to missing values.
    - As many as 57.6% (345 applicants) have 0 family members, 17.03% (102 applicants) have one family member.
    - Moreover, as many as 16.86% (101 applicants) have two family members.
    - 8.51% (51 applicants) have three or more family members.
<br><br>

*   QUALIFICATION <br>
![QUALIFICATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Qualification.png)<br>
    - **There are no missing values** or no applicants with unidentified qualifications in the dataset.
    - The dataset has an uneven distribution between graduated and under graduated applicants, with the percentage of graduated applicants is 78.18% (480 graduated applicants).
    - In comparison, the percentage of under graduated applicants is only 21.82% (134 under graduated applicants).
<br><br>

*   EMPLOYMENT <br>
![EMPLOYMENT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Employment.png)<br>
    - **32 loan applicants in the training dataset had an unknown employment status** due to missing values.
    - The dataset has an **uneven distribution between yes (employed) and no (unemployed) loan applicants**, with the percentage of no (unemployed) applicants is 85.91% (500 unemployed applicants).
    - While the percentage of not yes (employed) applicants is only 14.09% (82 employed applicants).
<br><br>

*   LOAN_HISTORY <br>
![LOAN_HISTORY](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanHistory.png)<br>
    - **50 loan applicants in the training dataset had an unidentified history of loan applicants** due to missing values.
    - As many as 57.6% (345 applicants) have 0 family members, 17.03% (102 applicants) have one family member.
    - Moreover, as many as 16.86% (101 applicants) have two family members.
    - 8.51% (51 applicants) have three or more family members.
<br><br>

*   LOAN_LOCATION <br>
![LOAN_LOCATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanLocation.png)<br>
    - **There are no missing values or no applicants with unidentified qualifications** in the dataset.
    - As many as 32.9% (202 applicants) live in the city, 37.95% (233 applicants) live in the town. 
    - Moreover, as many as 29.15% (179 applicants) live in the village
<br><br>

*   LOAN_APPROVAL_STATUS <br>
![LOAN_APPROVAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanApprovalStatus.png)<br>
    - **There are no missing values or no applicants that had unidentified loan approval status** in the dataset.
    - The dataset has an uneven distribution between approved loans (Y) and rejected loans (N), with the percentage of the approved loan (Y) is 68.73% (422 applicants).
    - The percentage of the rejected loan (N) is 31.27% (192 applicants).
<br><br>

*   CANDIDATE_INCOME <br>
![CANDIDATE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_CandidateIncome.png)<br>
    - It can be seen that there are no missing values or no applicants that had unidentified income in the dataset
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 3,812.5 and mean 5,403.46
    - Based on the standard deviation, mean, and maximum value, it can be determined that this variable contains extreme outliers because the maximum value is greater than the (mean + 3x standard deviation) value.
<br><br>

*   GUARANTEE_INCOME <br>
![GUARANTEE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_GuaranteeIncome.png)<br>
    - There are no missing values or no applicants that had unidentified guarantee income in the dataset.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 1188.50 and mean 1621.25
    - Based on the standard deviation, mean, and maximum value, it can be determined that this variable contains extreme outliers because the maximum value is greater than the (mean + 3x standard deviation) value.
<br><br>

*   LOAN_AMOUNT <br>
![LOAN_AMOUNT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanAmount.png)<br>
    - There are 22 missing values.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 128 and mean 146.4121622
<br><br>

*   LOAN_DURATION <br>
![LOAN_DURATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanDuration.png)<br>
    - It can be seen that **there are 14 missing values**.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342
<br><br>

#### ▶ Bivariate - Training:
*   GENDER - MARITAL_STATUS <br>
![GENDER - MARITAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Gender_MaritalStatus.png)<br>
    - Most male applicants are already married (92.01%). In contrast, the majority of female applicants are not yet married (38.01%).
    - The percentage of female applicants who are already married is only 7.99%, while the percentage of male applicants who are not yet married is 61.90%.
    - There are 16 missing data due to three missing values for married status and thirteen missing values for gender.
<br><br>

*   FAMILY_MEMBERS - QUALIFICATION <br>
![FAMILY_MEMBERS - QUALIFICATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_FamilyMembers_Qualification.png)<br>
    - The majority of loan applicants who are graduates do not have any family members (58.64%).
    - Most loan applicants who are undergraduates do not have any family members (53.85%).
    - Graduates with one family member are 17.27%, while undergraduates with one family member are 16.15%.
    - The percentage of graduates with two family members is 16.42%, while undergraduates with two family members are 18.46%.
    - The percentage of graduates with three or more family members is 7.68%, while undergraduates with three or more family members are 11.54%.
    - There are 15 missing values; this is since there are 15 missing data for family members but no missing value for qualification.
<br><br>

*   EMPLOYMENT - LOAN_HISTORY <br>
![EMPLOYMENT - LOAN_HISTORY](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Employment_LoanHistory.png)<br>
    - It can be seen that 86% of unemployed loan applicants have good loan history.
    - The loan applicants who are also unemployed have bad loan history with a percentage of 86.36%.
    - It can be seen that the percentage of applicants that are employed and have bad loan history is 13.64%, and the percentage of applicants that are employed and have good loan history is 14.00%. 
    - There are 76 missing values because there are 32 missing values in employment, 50 missing values in loan history, and the remaining missing values for employment and loan history.
<br><br>

*   LOAN_LOCATION - LOAN_APPROVAL_STATUS <br>
![LOAN_LOCATION - LOAN_APPROVAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanLocation_LoanApprovalStatus.png)<br>
    - Most loan applications that got rejected belong to applicants from cities and villages, with both percentages being 35.94%.
    - It can be seen that the percentages of rejected loan applications from towns are lower than loan applications from cities and villages (28.13%).
    - It can be seen that most loan applications that got accepted are from a town with a percentage of 42.42%.
    - It can be seen that the percentage of approved loan applications from the city is 31.52% and from the village is 26.07%.
    - It can be seen that there are no missing values from the loan location variable and the loan approval status variable.
<br><br>

*   GENDER - LOAN_APPROVAL_STATUS <br>
![GENDER - LOAN_APPROVAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Gender_LoanApprovalStatus.png)<br>
    - It can be seen that the majority of approved loan applications comes from male applicants, with a percentage of 81.88%.
    - It can also be seen that most rejected loan applications come from male applicants, with 80.21%.
    - The percentage of female applicants with approved loan applications is 18.12%. The percentage of female applicants with rejected loan applications is 19.79%
    - There are 13 missing values, with 13 missing values in the gender variable and none in loan approval status.
<br><br>

*   LOAN_APPROVAL_STATUS - CANDIDATE_INCOME <br>
![LOAN_APPROVAL_STATUS - CANDIDATE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_CandidateIncome.png)<br>
    - It can be seen from the box plot that there are lots of outliers in candidate income.
    - For both box plots, it can be seen that the distribution is positively skewed because the median value is closer to the lower quartile.
    - The table shows that both maximum values for approved and rejected loan applications are more significant than the mean value, indicating extreme outliers in the dataset.
<br><br>

*   LOAN_APPROVAL_STATUS - GUARANTEE_INCOME <br>
![LOAN_APPROVAL_STATUS - GUARANTEE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_GuaranteeIncome.png)<br>
    - It can be seen from the box plot that there are lots of outliers in guarantee income
    - For rejected loan applications box plots, it can be seen that the distribution is positively skewed because the median value is closer to the lower quartile.
    - For the approved loan applications box plot, it can be seen that the distribution is slightly negatively skewed because the median value is slightly closer to the top quartile.
    - Both maximum values for approved and rejected loan applications are more significant than the mean value, indicating extreme outliers in the dataset
<br><br>

*   LOAN_APPROVAL_STATUS - LOAN_AMOUNT <br>
![LOAN_APPROVAL_STATUS - LOAN_AMOUNT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_LoanAmount.png)<br>
    - It can be seen from the box plot that there are lots of outliers in the loan amount.
    - For both loan applications box plots, it can be seen that the distribution is slightly positively skewed because the median value is slightly closer to the lower quartile.
    - The table shows that both maximum values for approved and rejected loan applications are more significant than the mean value, indicating extreme outliers in the dataset.
<br><br>

*   CANDIDATE_INCOME - GUARANTEE_INCOME <br>
![CANDIDATE_INCOME - GUARANTEE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_CandidateIncome_GuaranteeIncome.png)<br>
    - It can be seen that from the tables and scatter plot that there is a negative correlation with -0.11660.
    - The correlation coefficient is significant at the 95 per cent confidence interval, as it has a p-value of 0.0038, indicating that it holds for the whole population.
<br><br>

*   LOAN_AMOUNT - LOAN_DURATION <br>
![LOAN_AMOUNT - LOAN_DURATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanAmount_LoanDuration.png)<br>
    - It can be seen that from the tables and scatter plot that there is a positive correlation between candidate income and guarantee income 0.03945.
    - This correlation coefficient between loan amount and loan duration is not significant at the 95 per cent confidence interval (p-value = 0.3438).
<br><br>

### ⚒ Testing Data Set
#### ▶ Univariate - Testing:
*   GENDER <br>
![GENDER](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Gender.png)<br>
    - **11 LFI customers had an unidentified gender** due to missing values in the dataset.
    - The dataset has an **uneven distribution between male and female loan applicants**, with the percentage of male applicants is 80.34% (286 male applicants) and the percentage of female applicants is only 19.66% (70 female applicants).
<br><br>

*   MARITAL_STATUS <br>
![MARITAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_MaritalStatus.png)<br>
    - There are no missing values.
    - The dataset has an uneven distribution between married and not married loan applicants, with the percentage of married applicants is 63.49% (233 married applicants) and the percentage of not married applicants is only 36.51% (134 not married applicants).
<br><br>

*   FAMILY_MEMBERS <br>
![FAMILY_MEMBERS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_FamilyMembers.png)<br>
    - **10 loan applicants in the testing dataset had an unidentified number of family members** due to missing values.
    - As many as 56.02% (200 applicants) have 0 family members, 16.25% (58 applicants) have one family member, 16.53% (59 applicants) have two family members, and 11.20% (40 applicants) have three or more family members.
<br><br>

*   QUALIFICATION <br>
![QUALIFICATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Qualification.png)<br>
    - **There are no missing values or no applicants with unidentified qualifications** in the dataset.
    - The dataset has an uneven distribution between graduated and under graduated applicants, with the percentage of graduated applicants is 77.11% (283 graduated applicants).
    - The percentage of under graduated applicants is only 22.89% (84 under graduated applicants).
<br><br>

*   EMPLOYMENT <br>
![EMPLOYMENT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Employment.png)<br>
    - **23 loan applicants in the training dataset had an unknown employment status** due to missing values.
    - The dataset has an uneven distribution between yes (employed) and no (unemployed) loan applicants, with the percentage of no (unemployed) applicants is 89.24% (307 unemployed applicants) while the percentage of not yes (employed) applicants is only 10.76% (37 employed applicants).
<br><br>

*   LOAN_HISTORY <br>
![LOAN_HISTORY](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanHistory.png)<br>
    - **29 loan applicants in the training dataset had an unidentified history of loan applicants** due to missing values.
    - The dataset has an uneven distribution between an applicant that has good loan history (1) and an applicant that has bad loan history (0), with the percentage of applicants that have bad loan history (0) is only 17.46% (59 applicants).
    - The percentage of applicants with good loan history (1) is 82.54% (279 applicants).
<br><br>

*   LOAN_LOCATION <br>
![LOAN_LOCATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanLocation.png)<br>
    - There are no missing values or applicants with unidentified loan locations in the dataset.
    - As many as 38.15% (140 applicants) live in the city, 31.61% (116 applicants) live in the town, and 30.25% (111 applicants) live in the village.
<br><br>

*   CANDIDATE_INCOME <br>
![CANDIDATE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_CandidateIncome.png)<br>
    - It can be seen that there are no missing values or no applicants that had unidentified income in the dataset
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 3,786 and mean 4,805.6.
<br><br>

*   GUARANTEE_INCOME <br>
![GUARANTEE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_GuaranteeIncome.png)<br>
    - It can be seen that there are no missing values or no applicants that had unidentified guarantee income in the dataset.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 1025 and mean 1569.58.
<br><br>

*   LOAN_AMOUNT <br>
![LOAN_AMOUNT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanAmount.png)<br>
    - It can be seen that there are five missing values.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 125 and mean 136.1325967.
<br><br>

*   LOAN_DURATION <br>
![LOAN_DURATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanDuration.png)<br>
    - It can be seen that there are six missing values.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342.5373961.
<br><br>


#### ▶ Bivariate - Testing:
*   GENDER - MARITAL_STATUS <br>
![GENDER - MARITAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_MaritalStatus.png)<br>
    - It can be seen that in both the frequency table and the mosaic plot, the majority of male applicants are already married (88.70%), while the majority of female applicants are not yet married (34.92%).
    - The percentage of female applicants who are already married is only 11.30%, while the percentage of male applicants who are not yet married is 65.08%.
    - There are 11 missing data due to 11 missing values for gender
<br><br>

*   FAMILY_MEMBERS - QUALIFICATION <br>
![FAMILY_MEMBERS - QUALIFICATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_FamilyMembers_Qualification.png)<br>
    - It can be seen that the majority of loan applicants who are graduates do not have any family members (58.39%).
    - Most loan applicants who are undergraduates do not have any family members (48.19%).
    - Graduates with one family member are 17.15%, while undergraduates with one family member are 13.25%.
    - The percentage of graduates with two family members is 14.96%, while undergraduates with two family members are 21.69%.
    - The percentage of graduates with three or more family members is 9.49%, while undergraduates with three or more family members are 16.87%.
    - There are ten missing values, since there are ten missing data for family members, but no missing value for qualification.
<br><br>

*   EMPLOYMENT - LOAN_HISTORY <br>
![EMPLOYMENT - LOAN_HISTORY](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Employment_LoanHistory.png)<br>
    - It can be seen that 87.59% of unemployed loan applicants have good loan history. The loan applicants who are also unemployed have a bad loan history with 96%.
    - It can be seen that the percentage of applicants that are employed and have bad loan history is 4%, and the percentage of applicants that are employed and have good loan history is 12.41%.
    - There are 51 missing values because there are 23 missing values in employment and 28 missing values in loan history.
<br><br>

*   GENDER - QUALIFICATION <br>
![GENDER - QUALIFICATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_Qualification.png)<br>
    - It can be seen that most male undergraduate loan applicants are higher than graduate male loan applicants.
    - Undergraduate males have a percentage of 82.50%, while male graduates have a percentage of 79.71%.
    - Graduate women have a percentage of 20.29%, while undergraduate women have a percentage of 17.50%.
    - It can be seen that there are 11 missing values from the gender variable and 0 missing values in the qualification variable.
<br><br>

*   GENDER - LOAN_LOCATION <br>
![GENDER - LOAN_LOCATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_LoanLocation.png)<br>
    - It can be seen that most male applicants come from the village with a percentage of 83.33%.
    - Male applicants come from the city, only 81.75% and male applicants come from town are 75.68%.
    - The majority of female applicants come from a town with a percentage of 24.32%.
    - Female applicants from the city are only 18.25%, female applicants from the village are only 16.67%.
    - There are 11 missing values, with 11 missing values in the gender variable and none in loan approval status.
<br><br>

*   FAMILY_MEMBERS - LOAN_LOCATION<br>
![FAMILY_MEMBERS - LOAN_LOCATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_FamilyMembers_LoanLocation.png)<br>
    - It can be seen that the majority of applicants who do not have family members come from villages with a percentage of 57.27%.
    - Applicants who do not have family members from the town have 55.86%, and those from the city have a percentage of 55.15%.
    - Applicants who have one family members majority come from a town with a percentage of 18.02%.
    - Applicants with one family member from the village have a percentage of 16.36%, and those from the city have 14.71%.
    - Applicants who have two family members majority come from villages with a percentage of 20%.
    - Applicants with two family members from the city have a percentage of 16.16%, and those from the city have 13.51%.
    - Applicants who have three or more family members majority come from cities with a percentage of 13.97%.
    - Applicants with three or more family members from the town have a percentage of 12.61%, and those from villages have a percentage of 6.36%.
    - There are ten missing values with ten missing values in the family members variable and none in loan location.
<br><br>

*   GENDER - CANDIDATE_INCOME <br>
![GENDER - CANDIDATE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_CandidateIncome.png)<br>
    - It can be seen from the box plot that there are lots of outliers in candidate income.
    - It can be seen that candidate income for male are much higher (mean = 4932.86) compare to female (mean = 4163.60).
    - For both box plots, it can be seen that the distribution is positively skewed because the median value is closer to the lower quartile.
    - Both maximum values for female and male applicants are more significant than the mean value, indicating extreme outliers in the dataset.
<br><br>

*   MARITAL_STATUS - GUARANTEE_INCOME <br>
![MARITAL_STATUS - GUARANTEE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_MaritalStatus_GuaranteeIncome.png)<br>
    - It can be seen from the box plot that there are lots of outliers in guarantee income.
    - The guaranteed income is higher for married applicants (mean = 1627.12) than unmarried applicants (mean = 1459.53).
    - For not married applicants box plots, it can be seen that the distribution is positively skewed because the median value is closer to the lower quartile.
    - For the married applicant's box plot, it can be seen that the distribution is slightly negatively skewed because the median value is slightly closer to the top quartile.
    - Both maximum values for married and unmarried applicants are more significant than the mean value, indicating extreme outliers in the dataset.
<br><br>

*   EMPLOYMENT - LOAN_AMOUNT <br>
![EMPLOYMENT - LOAN_AMOUNT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Employment_LoanAmount.png)<br>
    - It can be seen from the box plot that there are lots of outliers in the loan amount.
    - The loan amount is more significant for employed applicants (mean = 150.1891892) than for unemployed applicants (mean = 133.7218543).
    - It can be seen that the distribution is slightly positively skewed because the median value is slightly closer to the lower quartile.
    - Both maximum values for employed and unemployed applicants are more significant than the mean value, indicating extreme outliers in the dataset.
<br><br>

*   CANDIDATE_INCOME - GUARANTEE_INCOME <br>
![CANDIDATE_INCOME - GUARANTEE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_CandidateIncome_GuaranteeIncome.png)<br>
    - It can be seen that from the tables and scatter plot that there is a negative correlation between candidate income and guarantee income with -0.11033.
    - This correlation coefficient is significant at the 95 per cent confidence interval, as it has a p-value of 0.0346.
<br><br>

*   LOAN_AMOUNT - LOAN_DURATION <br>
![LOAN_AMOUNT - LOAN_DURATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_LoanAmount_LoanDuration.png)<br>
    - It can be seen that from the tables and scatter plot that there is a positive correlation between candidate income and guarantee income 0.09495.
    - The correlation coefficient is not significant at the 95 per cent confidence interval, with a p-value of 0.0736.
<br><br>

*   CANDIDATE_INCOME - LOAN_DURATION <br>
![CANDIDATE_INCOME - LOAN_DURATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_CandidateIncome_LoanDuration.png)<br>
    - It can be seen that from the tables and scatter plot that there is a positive correlation between candidate income and loan duration 0.02325.
    - The correlation coefficient is not significant at the 95 per cent confidence interval, with a p-value of 0.6598.
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

## 🛠 Data Imputation:
👉 The data imputation will be described as follows: <br>
<table>
<thead>
  <tr>
    <th rowspan="7"><b>Training</b></th>
    <th rowspan="5"><i>Mode</i></th>
    <th>Gender</th>
  </tr>
  <tr>
    <th>Family Members</th>
  </tr>
  <tr>
    <th>Marital Status</th>
  </tr>
  <tr>
    <th>Employment</th>
  </tr>
  <tr>
    <th>Loan History</th>
  </tr>
  <tr>
    <th rowspan="2"><i>Mean</i></th>
    <th>Loan Amount</th>
  </tr>
  <tr>
    <th>Loan Duration</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="6"><b>Testing</b></td>
    <td rowspan="4"><i>Mode</i></td>
    <td>Gender</td>
  </tr>
  <tr>
    <td>Family Members</td>
  </tr>
  <tr>
    <td>Employment</td>
  </tr>
  <tr>
    <td>Loan History</td>
  </tr>
  <tr>
    <td rowspan="2"><i>Mean</i></td>
    <td>Loan Amount</td>
  </tr>
  <tr>
    <td>Loan Duration</td>
  </tr>
</tbody>
</table><br>

👉 Summary: all the **categorical variables** will be imputed using **mode**, while all the **continuous variables** will be imputed using **mean**.
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

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
-->
## 🙌 Support me!

👉 If you find this project useful, **please ⭐ this repository 😆**!
### 🎈 Check out my work on Kaggle [here](https://www.kaggle.com/code/caesarmario/heart-disease-eda-prediction) using **various machine learning models**!
---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_
