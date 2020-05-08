# Sterna
## A Crowdsourcing Platform for Rapid Global Delivery

### Team Members: Yunkai Tang (yt2696), Yunjie Cao (yc3702), Siwei Chen (sc4574)

This repository contains the code and related package information of our Saas product Sterna.  

## Setup
- Versions of Ruby and Rails
```
Ruby 2.4.0  
Rails 4.2.10
```
- Install necessary packages
```
bundle install
```
- Database
```
Use MySQL as the database
modify configures in config/database.yml
rake db:drop db:create db:migrate
```
- Run the platform locally
```
rails server
```
- Deploy the platform on Heroku
```
heroku login
git push heroku master
```
- Run all test code
```
cucumber features/*.feature
```
Github URL: https://github.com/YunjieCao/AdvSE  
This is a private repository. Code will be submitted on Coursework. Can contact us to ask for the access to this repository.  
The project is deployed on Heroku and the url is: https://safe-taiga-58766.herokuapp.com

## Agile development
We follow agile development pattern to develop our platform. Details of our plan are shown in the following table. 

