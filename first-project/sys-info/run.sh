#!/bin/bash

echo "demo started"

title="System Information Report For $HOSTNAME"
current_time=$(date)
time_stamp="Generaed $current_time, by $USER"

touch sys_info_page.html

echo "<HTML> 
         <HEAD>
               <TITLE>$title</TITLE>
         </HEAD>
         <BODY>
            <H1>$title<H1>
            <P>$time_stamp</P>
         </BODY>

 </HTML>" | tee sys_info_page.html

google-chrome-stable sys_info_page.html
