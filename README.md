# utl_table_graph_ppt
Side by side proc report table and sg graphic

    ```  Best way to get graphs into Powerpoint for presentation/publcation?  ```
    ```    ```
    ```  Table and graph side by side in pdf and powerpoint  ```
    ```    ```
    ```     Publications prefer PDFs. This gives you both.  ```
    ```    ```
    ```     WORKING CODE  ```
    ```     ============  ```
    ```    ```
    ```         ods pdf file="d:/pdf/side_by_side.pdf";  ```
    ```         ods layout gridded columns=2 column_widths=(47% 47%) column_gutter=1pct;  ```
    ```    ```
    ```         proc report data=sashelp.class  ```
    ```         ods region;  ```
    ```    ```
    ```         proc sgplot data=sashelp.class;  ```
    ```         bubble x=height y=weight size=age/ group=sex transparency=.3;  ```
    ```    ```
    ```         * pdf to bitmap ppt;  ```
    ```         x "d:\exe\p2p\pdftopptcmd.exe d:/pdf/side_by_side.pdf d:/ppt/side_by_side.ppt";  ```
    ```    ```
    ```    ```
    ```  output ppt  ```
    ```  https://www.dropbox.com/s/cn803o3pb1m3c7f/side_by_side.ppt?dl=0  ```
    ```    ```
    ```  output pdf  ```
    ```  https://www.dropbox.com/s/iarq3n025z69e5i/side_by_side.pdf?dl=0  ```
    ```    ```
    ```  see  ```
    ```  https://goo.gl/6hmE85  ```
    ```  https://communities.sas.com/t5/SAS-Enterprise-Guide/Best-way-to-get-graphs-into-Powerpoint-for-presentation/m-p/378284  ```
    ```    ```
    ```  Free pdf to ppt software  ```
    ```  http://www.boxoft.com/pdf-to-ppt/  ```
    ```    ```
    ```  HAVE  ```
    ```  ====  ```
    ```    ```
    ```    SASHELP.CLASS  ```
    ```    ```
    ```    Up to 40 obs from SASHELP.CLASS total obs=19  ```
    ```    ```
    ```    Obs    NAME       SEX    AGE    HEIGHT    WEIGHT  ```
    ```    ```
    ```      1    Alfred      M      14     69.0      112.5  ```
    ```      2    Alice       F      13     56.5       84.0  ```
    ```      3    Barbara     F      13     65.3       98.0  ```
    ```      4    Carol       F      14     62.8      102.5  ```
    ```      5    Henry       M      14     63.5      102.5  ```
    ```      6    James       M      12     57.3       83.0  ```
    ```      7    Jane        F      12     59.8       84.5  ```
    ```     .....  ```
    ```    ```
    ```    ```
    ```    ```
    ```    ```
    ```    ```
    ```    ```
    ```  WANT PDF and PPT slide  ```
    ```  =======================  ```
    ```    ```
    ```    Up to 40 obs from SASHELP.CLASS total obs=19  ```
    ```    ```
    ```    NAME       SEX    AGE    HEIGHT    WEIGHT  ```
    ```                                                  HEIGHT  ```
    ```    Alfred      M      14     69.0      112.5      80 +  ```
    ```    Alice       F      13     56.5       84.0         |  ```
    ```    Barbara     F      13     65.3       98.0         |  ```
    ```    Carol       F      14     62.8      102.5         |  ```
    ```    Henry       M      14     63.5      102.5         |                            *  ```
    ```    James       M      12     57.3       83.0      70 +                  *  ```
    ```    Jane        F      12     59.8       84.5         |                       *  ```
    ```    Janet       F      15     62.5      112.5      01 |             *   *  ```
    ```    Jeffrey     M      13     62.5       84.0         |           *   *      *  ```
    ```    John        M      12     59.0       99.5         |          *    *  *  ```
    ```    Joyce       F      11     51.3       50.5      60 +          *   *  ```
    ```    Judy        F      14     64.3       90.0         |         **  ```
    ```    Louise      F      12     56.3       77.0         |        * *  ```
    ```    Mary        F      15     66.5      112.0         |  ```
    ```    Philip      M      16     72.0      150.0         |*  ```
    ```    Robert      M      12     64.8      128.0      50 +  ```
    ```    Ronald      M      15     67.0      133.0         -+-------------+-------------+-  ```
    ```    Thomas      M      11     57.5       85.0         50            100           150  ```
    ```    William     M      15     66.5      112.0  ```
    ```                                                                   WEIGHT  ```
