*                _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

;
    just use sashelp.class


*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;


 options orientation=landscape;
 ods pdf file="d:/pdf/side_by_side.pdf";
 ods layout gridded columns=2 column_widths=(47% 47%) column_gutter=1pct;
 ods region;
 proc report data=sashelp.class
    style(report)={outputwidth=100pct}
    style(header)={font_size=13pt}
    style(column)={font_size=12pt}
;
 run;quit;
 ods region;
 proc sgplot data=sashelp.class;
 bubble x=height y=weight size=age/ group=sex transparency=.3;
 run;
ods layout end;
ods pdf close;

x "d:\exe\p2p\pdftopptcmd.exe d:/pdf/side_by_side.pdf d:/ppt/side_by_side.ppt";


