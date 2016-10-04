# ansible-lemp
     #use --ask-become-pass if user is not enabled for NOPASSWD 
     ansible-playbook lemp.yml -u ubuntu --ask-become-pass -f 40 -i hosts  --ask-pass


Note: mysqlscript

    ansible by default sets upthe mysql server without root password. this script will create necessary database and imports the sql file from its respective app directory mentioned in script and will change/store the password into 
    /root/.mysqlrootpasswd
    
...work on progress
