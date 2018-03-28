wget https://packages.chef.io/files/stable/chef-server/12.17.33/el/7/chef-server-core-12.17.33-1.el7.x86_64.rpm
wget https://packages.chef.io/files/stable/chef-manage/2.5.8/el/7/chef-manage-2.5.8-1.el7.x86_64.rpm
sudo rpm -ivh *
sudo chef-server-ctl reconfigure
sudo chef-manage-ctl reconfigure
