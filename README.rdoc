== PROJECT WRITEUP

Title: CART
Team Members: Jesse Paterson, Evey Huang, Chris Lin, Liam Leahy
Demo Link: https://drive.google.com/open?id=0B-TEa0hPu-aGR3VRMnY5ZVNLTVU

Idea: An application where users can post items that they want to sell as well as purchase other people's items.

### Models and Description:
User
* has email, password, a cart, and multiple items for sales
* certain Users are Administrators and can edit the database
Item
* has name, description, and price
* each item belongs to a User
* each item belongs to a Category
Cart
* each User has a Cart, and each Cart belongs to a User
* each Cart can contain multiple items for sales
Category
* has name
* has many Items

### Features:
* Users can create accounts and log in.
* Admins can edit the database.
* Users can post items for sales.
* Users can put items into their carts.

### Division of Labor:
* Jesse: Made Admin, Category, and their controllers and views; worked on CSS
* Evey: Made Cart and its controller and view.
* Chris: Made Item and its controller and view.
* Liam: Made User and its controller and view.
