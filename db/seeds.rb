# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#//-------------------add cart---------//



Bulletin.create! title: '공지사항', post_type: 'list'
Bulletin.create! title: '퀵메뉴'
Bulletin.create! title: '나만의 주문'
Bulletin.create! title: '커뮤니티', post_type: 'gallery'
Bulletin.create! title: 'Contact Us'

Product.delete_all
Product.create! id: 1, name: "감자튀김", price: 0.49, active: true
Product.create! id: 2, name: "떡(10pc)", price: 0.30, active: true
Product.create! id: 3, name: "파채", price: 0.30, active: true
Product.create! id: 4, name: "칠리소스", price: 0.05, active: true
Product.create! id: 5, name: "허니머스타트소스", price: 0.05, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
