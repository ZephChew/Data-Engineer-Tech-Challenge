## Section 1: Data Pipelines

### Crontab will be used to run the script daily at 01:15AM

Open crontab editor 

`crontab -e`

Set up job with the below values

`15 1 * * * /usr/local/bin/python3 path_to_application/section1-gvt/main.py`

*change path_to_application to actual path*

## Section 2: Databases

### docker-compose have to be installed on target machine

```
Bring up docker containers 

docker-compose up -d --build

Login to pgadmin4 on localhost:8080

Username: admin@tech.com
Password: password

On pgadmin4 page, right click 'Servers' > Click on 'Register' > 'Server'
On General tab, type in any name (does not matter)
On Connection tab, type in the following

hostname/address: postgres
username: postgres
password: postgres

Click on 'Save' to complete the server setup
```

## Section 3: System Design

## Section 4: Charts and APIs

## Section 5: Machine Learning

category_encoders was used to prepare the data
gini index was used to train the model
