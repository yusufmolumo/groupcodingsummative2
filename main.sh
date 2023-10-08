#!/bin/bash

while true; do
    echo "ALU Registration System"
    echo "1. Create Student Record"
    echo "2. View All Students"
    echo "3. Delete Student Record"
    echo "4. Update Student Record"
    echo "5. Select Emails"
    echo "6. Exit"

    read -p "Select an option: " option

    case $option in
        1)
            echo "Creating a student record..."
            read -p "Enter student email: " email
            read -p "Enter student age: " age
            read -p "Enter student ID: " student_id
            echo "$email, $age, $student_id" >> students-list_0923.txt
            echo "Student record created."
            ;;
        2)
            echo "Viewing all students..."
            cat students-list_0923.txt
            ;;
        3)
            echo "Deleting a student record..."
            read -p "Enter student ID to delete: " delete_id
            sed -i "/$delete_id/d" students-list_0923.txt
            echo "Student with ID $delete_id deleted."
            ;;
        4)
            echo "Updating a student record..."
            read -p "Enter student ID to update: " update_id
            read -p "Enter new student email: " new_email
            read -p "Enter new student age: " new_age
            sed -i "s/$update_id,.*/$new_email, $new_age, $update_id/" students-list_0923.txt
            echo "Student with ID $update_id updated."
            ;;
        5)
            echo "Selecting emails and saving to student-emails.txt..."
            awk -F', ' '{print $1}' students-list_0923.txt > student-emails.txt
            echo "Student emails selected and saved to student-emails.txt."
            ;;
        6)
            echo "Exiting the application."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a valid option."
            ;;
    esac
done
