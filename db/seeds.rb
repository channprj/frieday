# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#//-------------------add cart---------//

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Bulletin.create! title: '공지사항', post_type: 'list'
Bulletin.create! title: '퀵메뉴'
Bulletin.create! title: '나만의 주문'
Bulletin.create! title: '커뮤니티', post_type: 'gallery'
Bulletin.create! title: 'Contact Us'

Product.delete_all
Product.create([
{name: '후라이드치킨', product_id: 101, description: '겉은 바삭하게 속살은 부드럽게 맛있는 치킨', image_url: "chickens/fried_whole_regular.jpg", price: 16000, weekly_sales: 2015, active: true},
{name: '크리스피치킨', product_id: 102, description: '더욱 더 바삭하게, 과자처럼 부서지는 맛있는 치킨', image_url: "chickens/crisp_whole_regular.jpg", price: 16000, weekly_sales: 2016, active: true},
{name: '양념치킨', product_id: 103, description: '매콤달콤한 맛의 대표 양념 치킨', image_url: "chickens/sauced_whole_regular.jpg", price: 17000, weekly_sales: 2013, active: true},
{name: '핫양념치킨', product_id: 104, description: '화끈한 청양고추로 맛을 낸 불같은 매운 맛', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: , active: true},
{name: '간장치킨', product_id: 105, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '훈제치킨', product_id: 106, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},

{name: '후라이드 파닭', product_id: 111, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '크리스피 파닭', product_id: 112, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '양념파닭', product_id: 113, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '매운양념 파닭', product_id: 114, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '간장파닭', product_id: 115, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '훈제파닭', product_id: 116, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},

{name: '갈릭 후라이드치킨', product_id: 121, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '갈릭 크리스피치킨', product_id: 122, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '갈릭 양념치킨', product_id: 123, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '갈릭 매운양념치킨', product_id: 124, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '마늘간장치킨', product_id: 125, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},
{name: '마늘훈제치킨', product_id: 126, description: '', image_url: "chickens/chicken_default.jpg", price: 18000, weekly_sales: 10, active: true},

{name: '갈릭파닭', product_id: 131, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '갈릭 크리스피파닭', product_id: 132, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '갈릭 양념파닭', product_id: 133, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '갈릭 매운양념파닭', product_id: 134, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '마늘간장파닭', product_id: 135, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '마늘훈제파닭', product_id: 136, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},

{name: '뿌링클 치킨', product_id: 141, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 크리스피치킨', product_id: 142, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 양념치킨', product_id: 143, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 매운양념치킨', product_id: 144, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 간장치킨', product_id: 145, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 훈제치킨', product_id: 146, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},

{name: '뿌링클 파닭', product_id: 151, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 크리스피파닭', product_id: 152, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 양념파닭', product_id: 153, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 매운양념파닭', product_id: 154, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 간장파닭', product_id: 155, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '뿌링클 훈제파닭', product_id: 156, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},

{name: '뿌링클 갈릭후라이드', product_id: 161, description: '', image_url: "chickens/chicken_default.jpg", price: 20000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭크리스피', product_id: 162, description: '', image_url: "chickens/chicken_default.jpg", price: 20000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭양념치킨', product_id: 163, description: '', image_url: "chickens/chicken_default.jpg", price: 20000, weekly_sales: 10, active: true},
{name: '뿌링클 매운양념치킨', product_id: 164, description: '', image_url: "chickens/chicken_default.jpg", price: 20000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭간장치킨', product_id: 165, description: '', image_url: "chickens/chicken_default.jpg", price: 20000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭훈제치킨', product_id: 166, description: '', image_url: "chickens/chicken_default.jpg", price: 20000, weekly_sales: 10, active: true},

{name: '뿌링클 갈릭파닭', product_id: 171, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭크리스피파닭', product_id: 172, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭양념파닭', product_id: 173, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭매운양념파닭', product_id: 174, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭간장파닭', product_id: 175, description: '궁극의 맛', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '뿌링클 갈릭훈제파닭', product_id: 176, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},

{name: '순살 후라이드치킨', product_id: 201, description: '', image_url: "chickens/chicken_default.jpg", price: 16000, weekly_sales: 10, active: true},
{name: '순살 크리스피치킨', product_id: 202, description: '', image_url: "chickens/chicken_default.jpg", price: 16000, weekly_sales: 10, active: true},
{name: '순살 양념치킨', product_id: 203, description: '', image_url: "chickens/chicken_default.jpg", price: 16000, weekly_sales: 10, active: true},
{name: '순살 핫양념치킨', product_id: 204, description: '', image_url: "chickens/chicken_default.jpg", price: 16000, weekly_sales: 10, active: true},
{name: '순살 간장치킨', product_id: 205, description: '', image_url: "chickens/chicken_default.jpg", price: 16000, weekly_sales: 10, active: true},
{name: '순살 훈제치킨', product_id: 206, description: '', image_url: "chickens/chicken_default.jpg", price: 16000, weekly_sales: 10, active: true},

{name: '순살 후라이드 파닭', product_id: 211, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 크리스피 파닭', product_id: 212, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 양념파닭', product_id: 213, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 매운양념파닭', product_id: 214, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 간장파닭', product_id: 215, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 훈제파닭', product_id: 216, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},

{name: '순살 갈릭후라이드', product_id: 221, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 갈릭크리스피', product_id: 222, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 갈릭양념치킨', product_id: 223, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 갈릭매운양념치킨', product_id: 224, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 마늘간장치킨', product_id: 225, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 마늘훈제치킨', product_id: 226, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},

{name: '순살 갈릭파닭', product_id: 231, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 갈릭크리스피파닭', product_id: 232, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 갈릭양념파닭', product_id: 233, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 갈릭매운양념파닭', product_id: 234, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 마늘간장파닭', product_id: 235, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},
{name: '순살 마늘훈제파닭', product_id: 236, description: '', image_url: "chickens/chicken_default.jpg", price: 17000, weekly_sales: 10, active: true},

{name: '순살 뿌링클 치킨', product_id: 241, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 크리스피치킨', product_id: 242, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 양념치킨', product_id: 243, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 매운양념치킨', product_id: 244, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 간장치킨', product_id: 245, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 훈제치킨', product_id: 246, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},

{name: '순살 뿌링클 파닭', product_id: 251, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 크리스피파닭', product_id: 252, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 양념파닭', product_id: 253, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 매운양념파닭', product_id: 254, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 간장파닭', product_id: 255, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 훈제파닭', product_id: 256, description: '', image_url: "chickens/chicken_default.jpg", price: 19000, weekly_sales: 10, active: true},

{name: '순살 뿌링클 갈릭후라이드', product_id: 261, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭크리스피', product_id: 262, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭양념치킨', product_id: 263, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭매운양념치킨', product_id: 264, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭간장치킨', product_id: 265, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭훈제치킨', product_id: 266, description: '', image_url: "chickens/chicken_default.jpg", price: 21000, weekly_sales: 10, active: true},

{name: '순살 뿌링클 갈릭파닭', product_id: 271, description: '', image_url: "chickens/chicken_default.jpg", price: 22000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭크리스피파닭', product_id: 272, description: '', image_url: "chickens/chicken_default.jpg", price: 22000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭양념파닭', product_id: 273, description: '', image_url: "chickens/chicken_default.jpg", price: 22000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭매운양념파닭', product_id: 274, description: '', image_url: "chickens/chicken_default.jpg", price: 22000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭간장파닭', product_id: 275, description: '', image_url: "chickens/chicken_default.jpg", price: 22000, weekly_sales: 10, active: true},
{name: '순살 뿌링클 갈릭훈제파닭', product_id: 276, description: '궁극의 맛', image_url: "chickens/chicken_default.jpg", price: 22000, weekly_sales: 10, active: true},

{name: '콜라', product_id: 1001, description: '', image_url: "chickens/chicken_default.jpg", price: 2000, weekly_sales: 10, active: true},
{name: '사이다', product_id: 1002, description: '', image_url: "chickens/chicken_default.jpg", price: 2000, weekly_sales: 10, active: true},
{name: '치킨무', product_id: 1003, description: '', image_url: "chickens/chicken_default.jpg", price: 1000, weekly_sales: 10, active: true},
{name: '샐러드', product_id: 1004, description: '', image_url: "chickens/chicken_default.jpg", price: 2000, weekly_sales: 10, active: true},
{name: '추가소스', product_id: 1005, description: '', image_url: "chickens/chicken_default.jpg", price: 1000, weekly_sales: 10, active: true},

{name: '떡', product_id: 400, description: '', image_url: "chickens/chicken_default.jpg", price: 22000, weekly_sales: 10, active: true}
])