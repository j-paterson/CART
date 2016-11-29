# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john = User.create(first_name: 'John', last_name: 'Smith', email: 'johnsmith@email.com', password: 'johnsmith', admin: true)
john_cart = Cart.find_or_create_by(user: john)
Order.find_or_create_by(cart: john_cart)

clothing = Category.create(name: 'Clothing')
food = Category.create(name: 'Food')
#shirts = Subcategory.create(name: 'Shirts', category_id: clothing)
#pants = Subcategory.create(name: 'Pants', category_id: clothing)
#fruit = Subcategory.create(name: 'Fruit',category_id: food)
#vegetables = Subcategory.create(name: 'Vegetables',category_id: food)

clothing.subcategories.create(name: 'Shirts')
clothing.subcategories.create(name: 'Pants')
food.subcategories.create(name: 'Fruit')
food.subcategories.create(name: 'Vegetables')	

shirts = Subcategory.find_or_create_by(name: 'Shirts')
pants = Subcategory.find_or_create_by(name: 'Pants')
fruit = Subcategory.find_or_create_by(name: 'Fruit')
vegetables = Subcategory.find_or_create_by(name: 'Vegetables')


Item.find_or_create_by(name: "Striped Shirt",
	description:
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user: john,
	subcategory: shirts
	)
Item.find_or_create_by(name: "Dotted Shirt",
	description:
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user: john,
	subcategory: shirts
	)
Item.find_or_create_by(name: "Plain Shirt",
	description:
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user: john,
	subcategory: shirts
	)
Item.find_or_create_by(name: "Grey Jeans",
	description:
	'60% Polyester, 40% Cotton',
	price: 15.73,
	user: john,
	subcategory: pants
	)
Item.find_or_create_by(name: "Carrot",
	description:
	'Organic!',
	price: 15.73,
	user: john,
	subcategory: vegetables
	)
Item.find_or_create_by(name: "Apple",
	description:
	'Crisp and Juicy!',
	price: 15.73,
	user: john,
	subcategory: fruit
	)

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
