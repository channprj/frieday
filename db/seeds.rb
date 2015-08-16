# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bulletin.create! title: '공지사항', post_type: 'list'
Bulletin.create! title: '퀵메뉴'
Bulletin.create! title: '나만의 주문'
Bulletin.create! title: '커뮤니티', post_type: 'gallery'
Bulletin.create! title: 'Contact Us'