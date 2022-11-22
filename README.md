## Section 1: Data Pipelines

### Crontab will be used to run the script daily at 01:15AM

Open crontab editor 

`crontab -e`

Set up job with the below values

`15 1 * * * /usr/local/bin/python3 path_to_application/section1-gvt/main.py`

*change path_to_application to actual path*

## Section 2: Databases

### docker-compose have to be installed on target machine

```Bring up docker containers 

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

Click on 'Save' to complete the server setup```

## Section 3: System Design

Prepare a presentation to your project team on how you plan to design data infrastructure on the cloud for a company whose main business is in processing images. Your role is the `Tech Lead` for this project.

The company has a web application which collects images uploaded by customers. The company also has a separate web application which provides a stream of images using a Kafka stream. The company’s software engineers have already some code written to process the images.

The company would like to save processed images for a minimum of **7 days for archival purposes**. Ideally, the company would also want to be able to have some Business Intelligence (BI) on key statistics including number and type of images processed, and by which customers.

Produce a system architecture diagram (e.g. Visio, Powerpoint) using any of the commercial cloud providers' ecosystem to explain your design. Please also indicate clearly if you have made any assumptions at any point.

Share about the `pros` and `cons` of your design to justify the decisions you have made.

## Section 4: Charts and APIs

Your team decided to design a dashboard to display the statistic of COVID19 cases. You are tasked to display one of the components of the dashboard which is to display a visualisation representation of number of COVID19 cases in Singapore over time.

Your team decided to use the public data from https://documenter.getpostman.com/view/10808728/SzS8rjbc#b07f97ba-24f4-4ebe-ad71-97fa35f3b683.

Display a graph to show the number cases in Singapore over time using the APIs from https://covid19api.com/.

_Note: please submit screenshots of the dashboard_

## Section 5: Machine Learning

Using the dataset from https://archive.ics.uci.edu/ml/datasets/Car+Evaluation, create a machine learning model to predict the buying price given the following parameters:

- Maintenance = High
- Number of doors = 4
- Lug Boot Size = Big
- Safety = High
- Class Value = Good
