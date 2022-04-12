/* Generated Code (IMPORT) */
/* Source File: heart.csv */
/* Source Path: /home/u57978394/Heart Disease */
/* Code generated on: 4/12/22, 12:20 PM */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/home/u57978394/Heart Disease/heart.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);