/* ======================================================== */
/* .:. Heart Disease Prediction w/ Logistic Regression .:. */
/* ======================================================== */
/* Author			: Mario Caesar [caesarmario] */
/* Website			: https://linktr.ee/caesarmario_ */
/* Created Date		: 9 April 2022 */

/* -. The dataset is provided by UCI Machine Learning about Heart Disease */
/* -. Check out my work about heart disease prediction w/ various machine learning models at Kaggle */
/* (https://www.kaggle.com/code/caesarmario/heart-disease-eda-prediction) */

/* ======================================================== */
/* 1. | Univariate Analysis */
/* ======================================================== */

/* 1.1 | Categorical Variables */
/* -------------------------------------------------------- */

/* 1.1.1 | SAS Macro Categorical Variables Univariate Analysis  */
%MACRO MACRO_UVA_CV(DATASET_NAME, VARIABLE_NAME, TITLE_1, TITLE_2);
	PROC FREQ DATA=&DATASET_NAME;
		TABLE &VARIABLE_NAME;
	RUN;

	ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;

	PROC SGPLOT DATA=&DATASET_NAME;
		VBAR &VARIABLE_NAME;
		TITLE &TITLE_1;
		TITLE2 &TITLE_2;
	RUN;

%MEND MACRO_UVA_CV;

/* 1.1.2 | sex (Gender) */
%MACRO_UVA_CV(WORK.IMPORT, sex, 'Categorical Variables // Univariate Analysis', 
	'on sex (Gender)');

/* 1.1.3 | cp (Chest Pain Type) */
%MACRO_UVA_CV(WORK.IMPORT, cp, 'Categorical Variables // Univariate Analysis', 
	'on cp (Chest Pain Type)');

/* 1.1.4 | fbs (Fasting Blood Sugar) */
%MACRO_UVA_CV(WORK.IMPORT, fbs, 'Categorical Variables // Univariate Analysis', 
	'on fbs (Fasting Blood Sugar)');

/* 1.1.5 | restecg (Resting Electrocardiographic Results) */
%MACRO_UVA_CV(WORK.IMPORT, restecg, 
	'Categorical Variables // Univariate Analysis', 
	'on restecg (Resting Electrocardiographic Results)');

/* 1.1.6 | exang (Exercise Induced Angina) */
%MACRO_UVA_CV(WORK.IMPORT, exang, 
	'Categorical Variables // Univariate Analysis', 
	'on exang (Exercise Induced Angina)');

/* 1.1.7 | slope (Slope of the Peak Exercise) */
%MACRO_UVA_CV(WORK.IMPORT, slope, 
	'Categorical Variables // Univariate Analysis', 
	'on slope (Slope of the Peak Exercise)');

/* 1.1.8 | ca (Number of Major Vessels) */
%MACRO_UVA_CV(WORK.IMPORT, ca, 'Categorical Variables // Univariate Analysis', 
	'on ca (Number of Major Vessels)');

/* 1.1.9 | thal */
%MACRO_UVA_CV(WORK.IMPORT, thal, 
	'Categorical Variables // Univariate Analysis', 'on thal');

/* 1.1.10 | target (Heart Diseases Status) */
%MACRO_UVA_CV(WORK.IMPORT, target, 
	'Categorical Variables // Univariate Analysis', 
	'on target (Heart Diseases Status)');

/* 1.2 | Numerical Variables */
/* -------------------------------------------------------- */

/* 1.2.1 | SAS Macro Numerical Variables Univariate Analysis  */
%MACRO MACRO_UVA_NV(DATASET_NAME, VARIABLE_NAME, TITLE_1, TITLE_2);
	PROC MEANS DATA=&DATASET_NAME N NMISS MIN MAX MEAN MEDIAN STD;
		VAR &VARIABLE_NAME;
		TITLE &TITLE_1;
		TITLE2 &TITLE_2;
	RUN;

	ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;

	PROC SGPLOT DATA=&DATASET_NAME;
		HISTOGRAM &VARIABLE_NAME;
	RUN;

%MEND MACRO_UVA_NV;

/* 1.2.2 | age */
%MACRO_UVA_NV(WORK.IMPORT, age, 'Numerical Variables // Univariate Analysis', 
	'on age');

/* 1.2.3 | trestbps */
%MACRO_UVA_NV(WORK.IMPORT, trestbps, 
	'Numerical Variables // Univariate Analysis', 'on trestbps');

/* 1.2.4 | chol */
%MACRO_UVA_NV(WORK.IMPORT, chol, 'Numerical Variables // Univariate Analysis', 
	'on chol');

/* 1.2.5 | thalach */
%MACRO_UVA_NV(WORK.IMPORT, thalach, 
	'Numerical Variables // Univariate Analysis', 'on thalach');

/* 1.2.6 | oldpeak */
%MACRO_UVA_NV(WORK.IMPORT, oldpeak, 
	'Numerical Variables // Univariate Analysis', 'on oldpeak');


/* ======================================================== */
/* 3. | Dataset Pre-processing */
/* ======================================================== */

/* 3.1 | One-Hot Encoding */
/* -------------------------------------------------------- */

/* 3.1.1 | cp */
PROC SQL;
	ALTER TABLE WORK.IMPORT ADD cp_0 INT ADD cp_1 INT ADD cp_2 INT ADD cp_3 INT;
	RUN;
QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF cp="0" THEN
		cp_0="1";
	ELSE
		cp_0="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF cp="1" THEN
		cp_1="1";
	ELSE
		cp_1="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF cp="2" THEN
		cp_2="1";
	ELSE
		cp_2="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF cp="3" THEN
		cp_3="1";
	ELSE
		cp_3="0";
RUN;

QUIT;

/* 3.1.2 | thal */
PROC SQL;
	ALTER TABLE WORK.IMPORT ADD thal_0 INT ADD thal_1 INT ADD thal_2 INT ADD 
		thal_3 INT;
	RUN;
QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF thal="0" THEN
		thal_0="1";
	ELSE
		thal_0="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF thal="1" THEN
		thal_1="1";
	ELSE
		thal_1="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF thal="2" THEN
		thal_2="1";
	ELSE
		thal_2="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF thal="3" THEN
		thal_3="1";
	ELSE
		thal_3="0";
RUN;

QUIT;

/* 3.1.3 | slope */
PROC SQL;
	ALTER TABLE WORK.IMPORT ADD slope_0 INT ADD slope_1 INT ADD slope_2 INT;
	RUN;
QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF slope="0" THEN
		slope_0="1";
	ELSE
		slope_0="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF slope="1" THEN
		slope_1="1";
	ELSE
		slope_1="0";
RUN;

QUIT;

DATA WORK.IMPORT;
	SET WORK.IMPORT;

	IF slope="2" THEN
		slope_2="1";
	ELSE
		slope_2="0";
RUN;

QUIT;

/* 3.2 | Dropping Variables */
/* -------------------------------------------------------- */
DATA WORK.IMPORT;
	SET WORK.IMPORT (DROP=cp thal slope);
RUN;

/* 3.3 | Splitting Dataset */
/* -------------------------------------------------------- */

/* 3.3.1 | Use PROC SURVEYSELECT to Specify Train Test Ratio Split */

PROC SURVEYSELECT DATA=WORK.IMPORT RAT=0.8 OUT=IMPORT_SELECT OUTALL METHOD=SRS;
RUN;

DATA IMPORT_TRAIN IMPORT_TEST;
	SET IMPORT_SELECT;

	IF Selected="1" THEN
		OUTPUT IMPORT_TRAIN;
	ELSE
		OUTPUT IMPORT_TEST;
RUN;

/* 3.3.2 | Drop 'Selected' Column from Train and Test */

DATA WORK.IMPORT_TRAIN;
	SET WORK.IMPORT_TRAIN (DROP=Selected);
RUN;

DATA WORK.IMPORT_TEST;
	SET WORK.IMPORT_TEST (DROP=Selected);
RUN;

/* 3.4 | Prepare Test Set */
/* -------------------------------------------------------- */
DATA WORK.IMPORT_TEST;
	SET WORK.IMPORT_TEST;

	IF target="1" THEN
		target=.;
	ELSE
		target=.;
RUN;

QUIT;


/* ======================================================== */
/* 4. | Building Logistic Regression Model */
/* ======================================================== */

/* 4.1 | Building Logisitic Regression Model */
/* -------------------------------------------------------- */
PROC LOGISTIC DATA=WORK.IMPORT_TRAIN
		OUTMODEL=WORK.IMPORT_TRAIN_LRMODEL;
	CLASS sex cp_0 cp_1 cp_2 cp_3 fbs restecg exang ca thal_0 thal_1 thal_2 thal_3 slope_0 slope_1 slope_2;
	MODEL target=
	age sex cp_0 cp_1 cp_2 cp_3 trestbps chol fbs restecg thalach exang oldpeak slope_0 slope_1 slope_2 ca thal_0 thal_1 thal_2 thal_3;
	OUTPUT OUT=WORK.IMPORT_TRAIN_LRMODEL_OUTPUT P=PRED_PROB;
RUN;

/* 4.2 | Probability in Training */
/* -------------------------------------------------------- */
PROC SQL;
	SELECT * FROM WORK.IMPORT_TRAIN_LRMODEL_OUTPUT;
QUIT;

/* 4.3 | Prediction on Test */
/* -------------------------------------------------------- */
PROC LOGISTIC INMODEL = WORK.IMPORT_TRAIN_LRMODEL;
SCORE DATA = WORK.IMPORT_TEST
OUT = WORK.IMPORT_PREDICTIONS;
QUIT;

/* 4.4 | Display Predictions */
/* -------------------------------------------------------- */
PROC SQL;
	SELECT * FROM WORK.IMPORT_PREDICTIONS;
QUIT;


/* ======================================================== */
/* 5. | Output Delivery System (ODS) */
/* ======================================================== */

/* 5.1 | Locate the Output */
/* -------------------------------------------------------- */
PROC DATASETS LIBRARY=WORK MEMTYPE=DATA;
	RUN;

/* 5.2 | Generate Output */
/* -------------------------------------------------------- */
	ODS HTML CLOSE;
	ODS PDF CLOSE;
	ODS PDF 
		FILE='/home/u57978394/Heart Disease/Heart_Disease_Prediction_Report_caesarmario.pdf';
	OPTIONS NOBYLINE NODATE;
	OPTIONS ORIENTATION = REVERSELANDSCAPELANDSCAPE;
	TITLE 'Heart Disaease Prediction';

PROC REPORT DATA=WORK.IMPORT_PREDICTIONS NOWINDOWS;
	FOOTNOTE '---- End of Report // Report by @caesarmario ----';
RUN;

OPTIONS BYLINE;