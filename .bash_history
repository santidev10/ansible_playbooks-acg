ansible localhost -m ping
ansible localhost -m ping -k
exit
ssh-keygen
ssh-copy-id f80b2797831c.mylabserver.com
ssh f80b2797831c.mylabserver.com
ssh-copy-id 298bac74ee1c.mylabserver.com
ssh 298bac74ee1c.mylabserver.com
exit
ssh localhost
ssh-copy-id localhost
exit
pwd
cat /etc/ansible/ansible.cfg 
history
exit
cp /etc/ansible/hosts inv
ls
vi inv
ansible localhost -m ping
ansible remote -m ping
ansible -i inv remote -m ping
vi inv
ansible -i inv remote -m ping
ansible -i inv cemtos -m ping
ansible -i inv centos -m ping
ls
ansible remote -m ping
ansible -i inv remote -m ping
ansible -i inv remote -m setup
ansible -i inv remote -m setup | more
 
ansible -i inv remote -m yum =a "name=elinks state=installed"
ansible -i inv remote -m yum -a "name=elinks state=installed"
ansible -i inv centos -b -m yum -a "name=elinks state=installed"
  elinks
which elinks
ansible -i inv centos -b -m yum -a "name=elinks state=absent"
ansible -i inv centos -b -m yum -a "name=elinks state=absent" -f 10
asnsible-doc copy
ansible-doc copy
ls
ansible localhost -m ping
ls
ansible -i inv remote -m ping
ansible -i inv remote -m setup
history
cat inv
ansible localhost -a "touch /tmp/file"
ansible localhost -a "touch /tmp/file creates=/tmp/file"
ansible-doc command
ansible localhost -a "touch /tmp/file removes=/tmp/file"
ls /tmp/file
ansible localhost -a "rm /tmp/file removes=/tmp/file"
ls /tmp/file
ansible localhost -a "rm /tmp/file removes=/tmp/file"
ansible localhost -m shell -a "echo $PATH > /tmp/file"
ct /tmp/file
cat /tmp/file
ansible -i inv remote -m setup | less
ansible -i inv remote -m setup -a "filter=*dist*"
ls
ansible -i inv remote -m setup --tree facts
ls
cd facts
ls
cd 298bac74ee1c.mylabserver.com 
ls
cd 298bac74ee1c.mylabserver.com 
ls
view 298bac74ee1c.mylabserver.com 
 
ansible -i inv localhost -m file -a "name=testfile state=touch"
ls
cd ..
pwd
ls
ansible -i inv localhost -m file -a "name=testfile state=touch"
ansible -i inv localhost -m file -a "name=/root/testfile state=touch"
ansible -i inv localhost -b -m file -a "name=/root/testfile state=touch"
ls /root
sudo /s /root
sudo ls /root
ansible -i inv localhost -b -m file -a "name=/root/testfile state=abset"
ansible -i inv localhost -b -m file -a "name=/root/testfile state=absent"
pwd
ls
vi testfile
ansible -i inv remote -m copy -a "src=testfile dest=newfile"
ssh 298bac74ee1c.mylabserver.com
ansible -i inv centos -m lineinfile -a "path=/home/ansible/testfile line='I am the walrus' state=present"
ls
cat testfile 
ansible localhost -m lineinfile -a "line='I am before the walrus' path=testfile insertbefore='walrus'"
cat testfile 
ls
ansible localhost -m get_url -a "url=http://google.com dest=/home/ansible/google/html"
ansible localhost -m get_url -a "url=http://google.com dest=/home/ansible/google.html"
ls
cat google.html 
ansible -i inv remote -m get_url -a "url=https://google.com des=/home/ansible/test.html"
ansible -i inv remote -m get_url -a "url=https://google.com dest=/home/ansible/test.html"
ssh f80b2797831c.mylabserver.com
ansible -i inv ubuntu -m file -a "state=touch path=/home/amsible/test2"
ansible -i inv ubuntu -m file -a "state=touch path=/home/ansible/test2"
ansible -i inv ubuntu -m file -a "state=touch path=/home/ansible/test3"
ansible -i inv ubuntu -m lineinfile -a "line='test text for file 3' path=/home/ansible/test3"
ansible -i inv ubuntu -m lineinfile -a "line='test text for file 3' path=/home/ansible/file3 create=yes"
ansible -i inv ubuntu -m archive -a "path=/home/ansible format=zip dest=/tmp/files.zip"
ssh 298bac74ee1c.mylabserver.com
ansible -i inv ubuntu -m unarchive -a "remote_src=yes src=/tmp/files.zip dest=/tmp/"
ssh 298bac74ee1c.mylabserver.com
ansible -i inv remote -b -m user -a "name=super"
ssh f80b2797831c.mylabserver.com
ssh 298bac74ee1c.mylabserver.com
ansible -i inv remote -b -m user -a "name=super state=absent remove=yes"
ansible -i inv remote -b -m group -a "name=consultants"
ansible -i inv remote -b -m user -a "name=super group=consultants"
ssh 298bac74ee1c.mylabserver.com
ansible -i inv remote -b -m user -a "name=super"
ansible -i inv remote -b -m group -a "name=consultants"
ansible -i inv remote -b -m user -a "name=super group=wheel"
amsible -i inv remote -b -m user -a "name=super group=ansible"
ansible -i inv remote -b -m user -a "name=super group=ansible"
ansible -i inv remote -b -m group -a "name=consultants state=absent"
ansible all -b -m package -a "name=ntpdate state=latest"
ls
sudo vi /etc/ansible/hosts 
ansible all -b -m package -a "name=ntpdate state=latest"
sudo vi /etc/ansible/hosts 
ansible all -b -m package -a "name=ntpdate state=latest"
ansible all -b -m package -a "name=httpd state=latest"
ansible -i inv ubuntu -b -m apt -a "name=apache2"
ansible -i inv centos -b -m yum -a "name=httpd"
ansible -i inv centos -b -m yum -a "name=httpd state=latest"
ansible -i inv ubuntu -b -m service -a "name=apache2 state=started enabled=yes"
ansible -i inv centos -b -m service -a "name=httpd"
ansible all -m ping -f 50
exit
ls
vi play.yml
man ansible-playbook
ansible-playbook -i inv play.yml
cat play.yml 
vi play.yml 
ansible-playbook -i inv play.yml
vi play.yml 
ansible-playbook -i inv play.yml
.
which elinks
netcat
nc
nc google.com
nc -h
ss
ss -lntp
man ss
ncat
man ncat
man nc
man ncat
man nc
nmap
sudo yum install nmap
sudo nmap -sT www.google.com
sudo nmap -sT localhost
sudo nmap  localhost
sudo nmap  google.com
man nmpa
man nmap
sudo nmap -O google.com
q
sudo nmap -A google.com
 
exit
ls
cat inv
vi vars.yml
cat vars.yml 
mkdir group_vars
mkdir group_vars/remote
cp vars.yml group_vars/remote/
mkdir host_vars
vi vars_play.yml
ls
cat vars.yml 
cat vars_play.yml 
ansible-playbook vars_play.yml 
vi vars_play.yml
ansible-playbook vars_play.yml 
vi vars_play.yml
cat vars_play.yml 
ansible-playbook vars_play.yml 
ansible-playbook vars_play.yml -e @vars.yml
vi vars.yml
ls /mnt
cat vars_play.yml 
mkdir /mnt/nfs
sudo mkdir /mnt/nfs
cd /mnt/nfs
ls
mkdir nfs_dir
sudo mkdir nfs_dir
pwd
ls
touch nfs_file
sudo touch nfs_file
cd ~
ls
ansible-playbook vars_play.yml -e @vars.yml
ls
view google.html 
ls facts
cd working
ls
cat services.txt 
ls -la /mnt/nfs
cd ..
ls
cd working/
ls
cat cmd_output.txt 
pwd
ls
cat services.txt 
cat cmd_output.txt 
cd ..
ls
git clone https://github.com/linuxacademy/content-ansible-playbooks
ls
cd content-ansible-playbooks/
grep -er vars
grep -r vars
grep -r vars_play.yml 
ls
grep -r config.j2
cd ..
ls
vi config.j2
cat config.j2
vi template.yml
cat template.yml 
ansible-playbook template.yml 
vi template.yml 
ansible-playbook template.yml 
cat /opt/config
ansible -i inv remote -m setup filter=*ipv4*
ansible -i inv remote -m setup -a filter=*ipv4*
tail inv
vi facts.yml
cat facts
cat facts.yml 
ls /etc/ansible/ansible.cfg 
view /etc/ansible/ansible.cfg 
vi /etc/ansible/ansible.cfg 
sudo vi /etc/ansible/ansible.cfg 
ansible -i inv all -m setup
cd /tmp
ls
ls -l
time
date
view 298bac74ee1c.mylabserver.com 
tail 298bac74ee1c.mylabserver.com 
cd ..
ls
cd ~
ls
cat facts
cat facts.yml 
ansible-playbook -i inv facts.yml
ls
ssh 298bac74ee1c.mylabserver.com
ls
cat facts.yml 
ssh 298bac74ee1c.mylabserver.com
ip addr show
exit
ls
ssh 298bac74ee1c.mylabserver.com
ifconfig
ls
tail inc
tail inv
ssh f80b2797831c.mylabserver.com
ssh 298bac74ee1c.mylabserver.com
exit
ls
vi cond.yml
ls
stat vars.yml
ls
cat cond.yml 
ansible-playbook -i inv cond.yml
ssh f80b2797831c.mylabserver.com
ls
vi loop.yml
cat loop.yml 
ansible-playbook loop.yml
vi loop2.yml
cat loop2.yml 
ls
cat vars.yml 
ansible-playbook loop2.yml 
vi vars.yml
ansible-playbook loop2.yml 
clear
vi handler.yml
tsil inv
tail inv
cat inv
ssh f80b2797831c.mylabserver.com
vi handler.yml 
cat handler.yml 
ansible-playbook -i inv handler.yml 
ls
cd content-ansible-playbooks/
ls
grep -r error
grep -r httpd.conf.j2
grep -r j2
ls
cd ..
ls
cat handler.yml 
vi /home/ansible/httpd.conf.j2
cat handler.yml 
ansible-playbook -i inv handler.yml 
vi handler.yml 
ansible-playbook -i inv handler.yml 
vi handler.yml 
ansible-playbook -i inv handler.yml 
vi handler.yml 
ansible-playbook -i inv handler.yml 
cat /home/ansible/httpd.conf.j2
cat /etc/httpd/conf/httpd.conf
cat /etc/httpd/conf/httpd.conf | grep httpd_log_level
cat /etc/httpd/conf/httpd.conf | grep error
cat /home/ansible/httpd.conf.j2
vi /home/ansible/httpd.conf.j2
ansible-playbook -i inv handler.yml 
vi /home/ansible/httpd.conf.j2
ansible-playbook -i inv handler.yml 
vi /home/ansible/httpd.conf.j2
ansible-playbook -i inv handler.yml 
ssh f80b2797831c.mylabserver.com
ls
cat inv
ls
vi inv 
ls
vi tags.yml
cat tags.yml 
ansible-playbook tags.yml --tags software
which elinks
ansible-playbook tags.yml --tags software,files
ls
vi vault
ansible-vault encrypt vault
cat vault
cat vault 
ansible-vault decrypt vault  
cat vault 
ansible-playbook encrypt --vault-d prod@prompt vault
ansible-playbook encrypt --vault-id prod@prompt vault
ansible-vault encrypt --vault-id prod@prompt vault
vi secret.yml
cat secret.yml 
ansible-vault secret.yml
ansible-playbook secret.yml
vi secret.yml 
ansible-playbook secret.yml
vi secret.yml 
ansible-playbook secret.yml
ansible-playbook secret.yml --vault-id prod@prompt
cat open.txt 
echo blah > pwfile
cat pwfile 
ansible-playbook secret.yml --vault-id prod@pwfile
ls
rm open.txt 
ansible-playbook secret.yml --vault-id prod@pwfile
ansible-vault view vault
ansible-vault ecnrypt_string --vault-id prod@prompt'new_var=new-value'
ansible-vault encrypt_string --vault-id prod@prompt'new_var=new-value'
ls
vi error1.yml
cat error1.yml 
vi error1.yml
ansible-playbook error1.yml 
ls
vi do-stuff.sh
cat do-stuff.sh 
ansible-playbook error1.yml 
vi do-stuff.sh
vi error1.yml
ansible-playbook error1.yml 
ls
vi error1.yml 
ansible-playbook error1.yml 
vi error1.yml 
ansible-playbook error1.yml 
vi error1.yml 
ansible-playbook error1.yml 
vi error1.yml 
ansible-playbook error1.yml 
vi error1.yml 
ansible-playbook error1.yml 
vi error1.yml 
ls
./do-stuff.sh
python ./do-stuff.sh
sh ./do-stuff.sh
vi err
vi error1.yml 
vi do-stuff.sh 
sh ./do-stuff.sh w
cat do-stuff.sh 
vi error2.yml
cat error2.yml 
ansible-playbook error2.yml 
vi error2.yml
ansible-playbook error2.yml 
vi error2.yml
cat erro2
cat error2.yml 
vi error2.yml 
ansible-playbook error2.yml 
ls
vi async.yml
cat async.yml
vi sleep.sh
cat sleep.sh 
ansible-playbook async.yml
ls
ls -l
ls -l sleep.sh 
chmod u+x sleep.sh 
ls -l sleep.sh 
ansible-playbook async.yml
vi sleep.sh
cat sleep.sh 
ansible-playbook async.yml
vi sleep.sh
vi async.yml 
cat aysn
cat async.yml 
ansible-playbook async.yml
ps -aux | grep sleep
ls
vi delegate.yml
cat delegate.yml 
cat sleep.sh 
vi sleep.sh 
ansible-playbook -i inv delegate.yml 
vim serial.yml
cat serial.yml 
ansible-playbook serial.yml
vi serial.yml
cat serial.yml
ansible-playbook serial.yml
cp serial.yml serial-percentages.yml
vi serial-percentages.yml 
cat serial-percentages.yml 
ls
vi run-once.yml
cat run-once.yml 
vi run-once.yml
cat inv
ansible-playbook -i inv run-once.yml
cat inv 
ls
ls h*
ssh f80b2797831c.mylabserver.com
ansible-playbook -i inv cond.yml
cat /etc/ansible/hosts
cat inv
diff /etc/ansible/hosts inv
ls
cat do-stuff.sh 
pwd
ansible-galaxy init /home/ansible/common
ll common
vi common/tasks/main.yml
cat common/tasks/main.yml
vi common/meta/main.yml 
ls
ls content-ansible-playbooks/
cd content-ansible-playbooks/
ls
ls Ansible/
cd Ansible/
ls
cd Playbooks/
ls
cat accounts.yml 
cat acl.yml 
cat command.yml 
ls
cat pause.yml 
cat vars.yml 
cd ..
ls
cd ..
l
ls
cd AWS
ls
cd Playbooks/
ls
cd ..
pwd
ls
echo "# ansible_playbooks-acg" >> README.md
git init
git add .
git status
git commit -m "first commit"
git config --global user.email "santiago_gallo@hotmail.com"
git config --global user.name "Santiago Gallo"
git branch -M main
git remote add origin git@github.com:santidev10/ansible_playbooks-acg.git
git push -u origin main
pwd
ls -la
cd .ssh
ls
cat id_rsa.pub 
whoami
ls -l
exit
ls
ls -a
git push -u origin main
git branch -M main
git remote add origin git@github.com:santidev10/ansible_playbooks-acg.git
git branch
git remote -v
git branch -M main
git branch -M master
git init
git branch -M main
git checkout -b main
git push -u origin main
git branch -m main
git checkout -b main
git status
