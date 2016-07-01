# Install MongoDB Community Edition on Ubuntu 14.04
  Note:  Default path location
   ```
    data files :  /var/lib/mongodb
    log files : /var/log/mongodb
    conf file : /etc/mongod.conf
    default port configured : 27017
```
### 1. Import the public key used by the package management system.
```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
```
### 2. Create a list file for MongoDB. 
```
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
```
### 3. Reload local package database.¶
```
sudo apt-get update
```
## 4. Install the MongoDB packages.

### A Install the latest stable version of MongoDB.
```
sudo apt-get install -y mongodb-org
```
### B Install a specific release of MongoDB.
```
sudo apt-get install -y mongodb-org=3.2.7 mongodb-org-server=3.2.7 mongodb-org-shell=3.2.7 mongodb-org-mongos=3.2.7 mongodb-org-tools=3.2.7
```
### Start MongoDB
```
sudo service mongod start
```
### Stop MongoDB
```
sudo service mongod stop
```
### Verify MongoDB Installation
```
mongod --version 
```

# Uninstall MongoDB Community Edition
### 1. Stop MongoDB.¶
```
sudo service mongod stop
```
## 2. Remove Packages.
```
sudo apt-get purge mongodb-org*
```
## 3. Remove Data Directories.¶
### Remove logs
```
sudo rm -r /var/log/mongodb
```
### Remove data dir
```
sudo rm -r /var/lib/mongodb
```
