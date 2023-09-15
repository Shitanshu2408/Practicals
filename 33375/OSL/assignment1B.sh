#!/bin/bash

ADDRESS_BOOK_FILE="address_book.txt"

create_addressbook() {
    touch "$ADDRESS_BOOK_FILE"
    echo "Address book created successfully."
}

view_addressbook() {
    if [ -s "$ADDRESS_BOOK_FILE" ]; then
        cat "$ADDRESS_BOOK_FILE"
    else
        echo "Address book is empty."
    fi
}

insert_record() {
    echo "Enter Name: "
    read name
    echo "Enter Phone Number: "
    read phone
    echo "Enter Email: "
    read email
    echo "Enter Address: "
    read address#!/bin/bash

ADDRESS_BOOK_FILE="address_book.txt"

create_addressbook(){
    touch "$ADDRESS_BOOK_FILE"
    echo "Address book created successsfully."
}

view_addressbook(){
    if [ -s "$ADDRESS_BOOK_FILE" ]; then
        cat "$ADDRESS_BOOK_FILE"
    else
        echo "Address book is empty."
    fi
}

insert_record(){
    echo "Enter Name : "
    read name
    echo "Enter Phone Number : "
    read phone
    echo "Enter Email : "
    read email
    echo "Enter Address : "
    read address

    echo "$name | $phone | $address" >> "$ADDRESS_BOOK_FILE"
    echo "Record inserted successfully."
}

delete_record()
{
    echo "Enter the Name of the record to delete : "
    read name_to_delete

    if grep -q "$name_to_delete" "$ADDRESS_BOOK_FILE"; then
      grep -v "$name_to_delete" "$ADDRESS_BOOK_FILE" > temp_file
      mv temp_file "$ADDRESS_BOOK_FILE"
      echo "Record deleted successfully."
    else
        echo "Record not found."
    fi
}

modify_record()
{
    echo "Enter the Name of the record to modify : "
    read name_to_modify

    if grep -q "$name_to_modify" "$ADDRESS_BOOK_FILE"; then
      grep -v "$name_to_modify" "$ADDRESS_BOOK_FILE" > temp_file

    echo "Enter Name : "
    read name
    echo "Enter Phone Number : "
    read phone
    echo "Enter Email : "
    read email
    echo "Enter Address : "
    read address

    echo "$name | $phone | $email | $address" >> temp_file
    mv temp_file "$ADDRESS_BOOK_FILE"
    echo "Record Modified successfully."
    else
    echo "Record not found."
    fi
    
}

main(){
    while true; do
    echo -e "\n Options : "
    echo "a) Create Address Book"
    echo "b) View Address Book"
    echo "c) Insert a record"
    echo "d) Delete a record"
    echo "e) Modify a record"
    echo "f) Exit"

    read -p "Enter your Choice (a-f): "choice

    if["$choice" = "a"]; then
    create_addressbook
    elif["$choice" = "b"]; then
    view_addressbook
    elif["$choice" = "c"]; then
    insert_record
    elif["$choice" = "d"]; then
    delete_record
    elif["$choice" = "e"]; then
    modify_record
    elif["$choice" = "f"]; then
    echo "Exiting...."
    break
    else
        echo "Invalid choice. Please try again."
    fi
    done
}



    echo "$name | $phone | $email | $address" >> "$ADDRESS_BOOK_FILE"
    echo "Record inserted successfully."
}

delete_record() {
    echo "Enter the Name of the record to delete: "
    read name_to_delete

    if grep -q "$name_to_delete" "$ADDRESS_BOOK_FILE"; then
        grep -v "$name_to_delete" "$ADDRESS_BOOK_FILE" > temp_file
        mv temp_file "$ADDRESS_BOOK_FILE"
        echo "Record deleted successfully."
    else
        echo "Record not found."
    fi
}

modify_record() {
    echo "Enter the Name of the record to modify: "
    read name_to_modify

    if grep -q "$name_to_modify" "$ADDRESS_BOOK_FILE"; then
        grep -v "$name_to_modify" "$ADDRESS_BOOK_FILE" > temp_file

        echo "Enter Name: "
        read name
        echo "Enter Phone Number: "
        read phone
        echo "Enter Email: "
        read email
        echo "Enter Address: "
        read address

        echo "$name | $phone | $email | $address" >> temp_file
        mv temp_file "$ADDRESS_BOOK_FILE"
        echo "Record modified successfully."
    else
        echo "Record not found."
    fi
}

main() {
    while true; do
        echo -e "\nOptions:"
        echo "a) Create Address Book"
        echo "b) View Address Book"
        echo "c) Insert a record"
        echo "d) Delete a record"
        echo "e) Modify a record"
        echo "f) Exit"

        read -p "Enter your Choice (a-f): " choice

        if [ "$choice" = "a" ]; then
            create_addressbook
        elif [ "$choice" = "b" ]; then
            view_addressbook
        elif [ "$choice" = "c" ]; then
            insert_record
        elif [ "$choice" = "d" ]; then
            delete_record
        elif [ "$choice" = "e" ]; then
            modify_record
        elif [ "$choice" = "f" ]; then
            echo "Exiting...."
            break
        else
            echo "Invalid choice. Please try again."
        fi
    done
}

main
