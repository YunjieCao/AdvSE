# Sterna
## A Crowdsourcing Platform for Rapid Global Delivery

### Team Members: Yunkai Tang (yt2696), Yunjie Cao (yc3702), Siwei Chen (sc4574)

Full stack Saas product following MVC pattern using **Ruby on rails** and **Bootstrap**.   
Followed test-driven design pattern and used **Cucumber** and **Capybara** to develop user stories and test code to automatically test our features.  
The product is deployed on Heroku and the url is: https://safe-taiga-58766.herokuapp.com.

## Product Pitch
We developed this idea as we are aware of the difficulties facing people who want to mail surgical masks and protective hooded coveralls to Hubei, China from the United States recently. People frequently post online looking for carriers who travel to China. A centralized platform which can match shippers and carriers is in need.   
### Pain points we are addressing.
- Expensive shipping fee
- Long waiting time  
### How our SaaS product works?
We are designing a platform for people with demands for fast global delivery. People who want to send goods across the border can publish requests on our platform as a shipper. On the other hand, those who have the plan to travel will become carriers if they have an unused baggage allowance.  
### Why are we unique?
- Reliable. Aimed at several specific groups(eg. Students, travellers). All users' identification must be verified.
- Convenient. Carriers can pick items up at home or at the airport directly. Makes it possible for users willing to act as a carrier and help others.
- Lawful. Items already are checked by official authorizations(post office or airport). No need to worry about legality.
- Free of warehouse nor staff. Carriers or stores can help keep items for senders. Transactions only involve carriers and senders. 
- Low risk and speed. Lower risk of losing items and faster compared to normal logistics.
- Cheap. Much cheaper than transnational logistics companies.


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
#Use MySQL as the database
#modify configurations in config/database.yml
rake db:drop db:create db:migrate db:seed
```
- Run the platform locally
```
rails server
```
- Deploy the platform on Heroku
```
heroku login
git push heroku master
heroku run db:drop db:create db:migrate db:seed
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
| Phase | Stories                                 | Points |
|:-----:|-----------------------------------------|:------:|
|   1   | User Registeration                      |    3   |
|   1   | User Login                              |    1   |
|   1   | Request Marketplace                     |    3   |
|   1   | Add Addresses                           |    1   |
|   1   | Post Requests                           |    2   |
|   1   | Take Requests                           |    2   |
|   1   | Update Request's Status                 |    1   |
|   2   | Filter for the Requests                 |    2   |
|   2   | Model for User Verification             |    5   |
|   2   | Initialing a Request with a New Address |    1   |
|   2   | Selecting a Carrier                     |    1   |
|   2   | Displaying Ratings and Reviews          |    1   |
|   2   | Grouping Requests Together              |    1   |
|   3   | Review of Orders                        |    3   |
|   3   | Payment Module                          |    2   |
|   3   | Uploading Images                        |    2   |
|   3   | Logo and Homepage                       |    1   |
|   3   | Navigation Bar and Layout               |    1   |

## Platform Design
Some pages for our product.  
### Homepage
![image](https://github.com/YunjieCao/AdvSE/blob/master/app/assets/images/se0.png)
### Marketplace
![image](https://github.com/YunjieCao/AdvSE/blob/master/app/assets/images/se5.png)
### Shipment
![image](https://github.com/YunjieCao/AdvSE/blob/master/app/assets/images/se6.png)
### Payment module
![image](https://github.com/YunjieCao/AdvSE/blob/master/app/assets/images/se7.png)
### Workflow of our product.  
![image](https://github.com/YunjieCao/AdvSE/blob/master/app/assets/images/se2.jpeg)
![image](https://github.com/YunjieCao/AdvSE/blob/master/app/assets/images/se4.png)


