1. Clone this repo to your machine in directory /var/www/
 - git@github.com:sergpsw/vagrant_nginx-php-mysql.git
2. Open the terminal in this folder and enter command 'vagrant up'.
3. In the address bar of the browser, enter 192.168.88.81. You can change the static ip-address in the file 'Vagrantfile' in line 9 (row 44)
4. To stop the VM, run 'vagrant halt', to start it up again, 'vagrant up'.

By default:
name dump file - 'dump.sql';
password mysql - 'test';
name database - 'db_test';
You can change all of this in the script.sh file, by editing the relevant lines (1; 2; 3).
