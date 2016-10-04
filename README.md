# ansible-lemp
     #use --ask-become-pass if user is not enabled for NOPASSWD 
     ansible-playbook lemp.yml -u ubuntu --ask-become-pass -f 40 -i hosts  --ask-pass
