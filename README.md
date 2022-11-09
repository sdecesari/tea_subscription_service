<h1 align="center">Tea Subscription Service</h1>

<!-- TABLE OF CONTENTS -->
  <details>
  <summary>Table of Contents</summary>
  <ol>
    </li>
    <li><a href="#project-overview">Project Overview</a></li>
    <li><a href="#built-with">Built With</a></li>
    <li><a href="#setup">Setup</a></li>
    <li><a href="#schema">Schema</a></li>
    <li><a href="#api-endpoints">API Endpoints</a></li>
  </ol>
</details>

<!-- PROJECT OVERVIEW -->
## Project Overview
This is a Rails RESTful API app that is designed to create, update, and delete tea subscriptions for customers.

<!-- Built With -->
## Built With
[<img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white"/>](https://www.ruby-lang.org/en/) **Version 2.7.4**<br>
[<img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/>](https://rubyonrails.org/) **Version 5.2.8**<br>
[<img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white"/>](https://www.postman.com/product/what-is-postman/)<br>


<!-- Setup -->
## Setup
To set up the project on your local machine, complete the following steps:
1. Ensure you have the correct versions of both Ruby(2.7.4 or later) and Rails(5.2.8 or later) by running `ruby -v` and `rails -v` from your command line.<br>
2. Clone the repo:
```git clone git@github.com:sdecesari/tea_subscription_service.git``` &mdash; for SSH
4. Install gems using `bundle install`
5. Set up local database: `rails db:{drope,create,migrate,seed}
6. Launch your server: `rails s`


<!-- Schema -->
## Schema
![Screen Shot 2022-11-07 at 4 52 20 PM](https://user-images.githubusercontent.com/99003546/200712982-4d791178-4513-4c1c-ba5f-cd252bf97679.png)


<!-- API Endpoints -->
## API Endpoints
#### Create a Tea Subscription for a Customer
`POST /api/v1/customers/1/subscribe`<br
```
"data": {
   "id": 1,
   "type": "subscription",
   "attributes": {
       "title": "green tea subscription",
       "price": 10.00,
       "status": "active",
       "frequency": "weekly"
       }
     }
```
`PATCH /api/v1/customers/1/cancel`<br>
```
"data": {
   "id": 1,
   "type": "subscription",
   "attributes": {
       "title": "green tea subscription",
       "price": 10.00,
       "status": "active",
       "frequency": "weekly"
       }
     }
```
`GET /api/v1/customers/1/subscriptions`<br>
<br>![Screen Shot 2022-11-08 at 5 39 47 PM](https://user-images.githubusercontent.com/99003546/200715638-0246607a-acb2-4a4d-9b9a-b5b2a3870e3d.png)
  
