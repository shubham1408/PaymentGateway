# PaymentGateway
==================================

This is an asignment codebase which includes payment gateway apis with unit test cases.

APIs are session authenticated and browsable apis 
# URL FOR API

  Ability to post a payment through api. Payment Gateway implementation
     ----localhost:port_number(8000)/payment/api/v1/post/'----


# DEFAULT ADMIN USER WITH PASSWORD
	username -- namouser
	password -- namo


# CREATE ADMIN USER WITH PASSWORD COMMAND
	python manage.py createsuperuser


# ADMIN URL TO SHOW DATABASE LOGS AND ENTRIES POSTED IN PAYMENT TABLE
	----localhost:port_number(8000)/admin/----


# Technology Stack

  Python == 3.6.9
  
  Django == 3.0.8 

  Djangorestframework == 3.11.0
  
  MySql == 5.7.30

# Installation

## Install OS (Ubuntu) Requirements

    sudo apt-get update
    sudo apt-get upgrade

## Clone Project

    git clone https://github.com/shubham1408/PaymentGateway.git

## Setup your virtual environment and install requirements.

### Ubuntu/Mac setup

    python3 -m venv namoenv
    source namoenv/bin/activate
    pip3 install -r requirements.txt
    

## MySQL (database) setup

    sudo apt-get install mysql-server
    mysql -u root -p (for Ubuntu, you might need to run it as sudo mysql -u root -p)
    create database namodb;
    grant usage on *.* to myuser@localhost identified by 'mypasswd';
    grant all privileges on namodb.* to myuser@localhost;

obtain a dump of the database (convodb.sql from namodb.sql) and then add it to your local MySQL server (ensure that you run MySQL from the directory with the dump file):

    use namodb;
    source namodb.sql;

## Running Development Server

   python manage.py runserver


## Runninng ALL Test CASES

   python manage.py test


**Note:** Never forget to enable virtual environment (`source namoenv/bin/activate`) before running the above commands and use settings accordingly.

