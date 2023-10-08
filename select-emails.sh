#!/bin/bash

# Logic to select student emails and save them to student-emails.txt
awk -F', ' '{print $1}' students-list_0923.txt > student-emails.txt
echo "Student emails selected and saved to student-emails.txt."
