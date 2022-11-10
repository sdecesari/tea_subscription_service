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
    <li><a href="#error-handling">Error Handling</a></li>
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
![Screen Shot 2022-11-10 at 8 23 30 AM](https://user-images.githubusercontent.com/99003546/201150634-ce39bd54-4a3f-4b55-825a-491e43ec465d.png)<br>
#### Cancel a Tea Subscription for a Customer
![Screen Shot 2022-11-10 at 8 28 10 AM](https://user-images.githubusercontent.com/99003546/201151798-3d00f0a4-b5d0-41d2-ad8c-95a2e96629e2.png)<br>
#### See all Customers Active and Inactive Subscriptions
![Screen Shot 2022-11-10 at 8 26 42 AM](https://user-images.githubusercontent.com/99003546/201151476-c99f8bda-fec1-47af-a0b9-82c53d1b7d2e.png)
 
<!-- Error Handling -->
## Error Handling
#### Subscription cannot be made if any params are missing
![Screen Shot 2022-11-10 at 8 29 43 AM](https://user-images.githubusercontent.com/99003546/201152225-b7f350ae-0fad-4c16-a5f1-3bebd29dacc8.png)<br>
#### Subscription cannot be canceled if any params are missing
![Screen Shot 2022-11-10 at 8 32 40 AM](https://user-images.githubusercontent.com/99003546/201152906-1ac04655-5578-40e3-bf15-a0e9637c96eb.png)<br>
