# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#creating houses
print "Creating houses..."
House.destroy_all

h1 = House.create! title: 'Oakwoods', bed: 3, bath: 2, kitchen:1, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://image.cnbcfm.com/api/v1/image/104548349-Large_house_suburb.jpg?v=1532563813&w=740&h=416", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.07.46-am.png", address: "1 Oakwood ave brighton, melbourne 3186"
h2 = House.create! title: 'Brickwood', bed: 2, bath: 1, kitchen:1, parking: 'no', rent: '220.00', leasem: 3, descrip: 'smelly home', image_1:"https://www.mcdonaldjoneshomes.com.au/sites/default/files/styles/blog_hero_banner/public/st-clair-37-one-hamptons-b-facade-streched.jpg?itok=-W_Q171x", image_2: "https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.18.31-am.png", address: "1 smith street fitzroy, vic 3065"
h3 = House.create! title: 'Loverd', bed: 4, bath: 2, kitchen:1, parking: 'yes', rent: '370,70', leasem: 12, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.04.06-am-850x455.png", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.08.00-am.png", address: "34 inkerman st, st kilda, vic 3182"
h4 = House.create! title: 'Oakwood', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"


puts "created #{House.count} houses."

#creating suburb profiles for each house
puts "creating suburbs..."
Suburb.destroy_all

s1 = Suburb.create! name: 'Brighton', avrent: 800, descrip: "Beach side suburb", pop: 30000, age: 40, pt: 'yes', image: 'https://www.travelvictoria.com.au/images/brighton/banner2.jpg'
s2 = Suburb.create! name: 'Fitzroy', avrent: 650, descrip: "Young Northern suburb", pop: 27000, age: 27, pt: 'yes', image: 'https://res.akamaized.net/domain/image/fetch/t_web/c_fill,w_600/https://static.domain.com.au/domainblog/uploads/2016/10/15093808/1_grw41a.jpg'
s3 = Suburb.create! name: 'Melbourne CBD', avrent: 450, descrip: "Melbourne's Central business district", pop: 200000, age: 40, pt: 'yes', image: 'https://i.nextmedia.com.au/Utils/ImageResizer.ashx?n=http%3a%2f%2fi.nextmedia.com.au%2fNews%2fcrn-690-melbourne-city-buildings.jpg&w=480&c=0&s=1'

puts "created #{Suburb.count} suburbs."

s1.houses << h1 << h2
s2.houses << h4
s3.houses << h3

puts "testing associations between suburbs and houses"
puts "the house #{House.last.title} is in #{House.last.suburb.name}"


# transport available for each house
print "creating transport"
Transport.destroy_all

t1 = Transport.create! name:'Train', info:"Metro Trains Melbourne, often known simply as Metro, is the franchise operator of the electrified suburban passenger service on the Melbourne rail network. Metro Trains Melbourne is a joint venture between MTR Corporation, John Holland Group and UGL Rail.",image:"https://www.partystar.com.au/images/tourist/melbourne-train-map.gif"
t2 = Transport.create! name:'Bus', info:"Buses in Melbourne, Australia, are a major form of public transport in Melbourne, with an extensive bus network. There are 346 routes in operation with a varying range of service frequencies, operated by privately owned bus companies under franchise from the State Government. ",image:"http://www.stevepemberton.com.au/wp-content/uploads/2019/06/Diagram.png"
t3 = Transport.create! name:'Tram', info:"Trams are a major form of public transport in Melbourne, the capital city of the state of Victoria, Australia. As of May 2017, the Melbourne tramway network consists of 250 kilometres of double track, 493 trams, 24 routes, and 1,763 tram stops. The system is the largest operational urban tram network in the world",image:"https://64.media.tumblr.com/47103d76616f1151798fef5c7933ff58/tumblr_o7786shksc1vnb93so1_r1_1280.jpg"
t4 = Transport.create! name:'Bike Path', info:"Major on-road cycling routes include Royal Parade, Canning Street, Rathdowne Street, Swanston Street, Albert Street, La Trobe Street, Exhibition Street and St Kilda Road. Off-road routes include the Yarra River Trail, Moonee Ponds Creek Trail, Maribyrnong River Trail, Dynon Road, Footscray Road and Harbour Esplanade.",image:"https://www.ellaslist.com.au/wp-content/uploads/2017/02/bike1.jpg"

puts "created #{Transport.count} transport"

h1.transports << t1 << t3 << t4
h2.transports << t1 << t2 << t4
h3.transports << t2 << t4
h4.transports << t2 << t3

puts "the transport #{t1.name} is accessable by houses #{t1.houses.pluck(:title).join(',')}"
puts "the house #{h1.title} has the transport #{h1.transports.pluck(:name).join(',')}"


# many to many relationships between applications and houses
print "creating applications..."
Application.destroy_all

a1 = Application.create! title: 'I need a house asap!', status: "false", message: 'please contact me back :)', offer: 350, image: "https://media.guestofaguest.com/t_article_content/gofg-media/2019/10/1/52898/71594080_172055350514452_525689001797301715_n_(2).jpg", house_num: 1
a2 = Application.create! title: 'I love your house', status: "false", message: 'give me a buzz', offer: 600, image: "https://i.redd.it/xoabd8syg9f31.jpg", house_num: 2
a3 = Application.create! title: 'Can I live with ya?', status: "false", message: 'lets live together :)', offer: 800, image: "https://i.redd.it/xoabd8syg9f31.jpg", house_num: 2





#create users -- add image and varified later!!
print "creating users..."
User.destroy_all

u1 = User.create! email: 'reece@nimo.com', password: 'chicken', name: 'reece', bio: 'Hi im Reece!', image: 'https://upload.wikimedia.org/wikipedia/commons/1/14/GuyRitchiebyKathyHutchins.jpg'
u2 = User.create! email: 'andrewp88@gmail.com', password: 'chicken', name: 'andrew', bio: 'Hi im andrew!', image: 'https://upload.wikimedia.org/wikipedia/commons/1/17/Guy_Sebastian_2014.jpg'
u3 = User.create! email: 'peggy63@hotmail.com', password: 'chicken', name: 'peggy', bio: 'Hi im Peggy!', image: 'https://img.cinemablend.com/quill/5/f/c/d/9/5/5fcd951000ebd77f17a2f0e676ee957e2cdccf37.jpg'

puts "created #{User.count} users."

# add user -< application associations
u1.applications << a1
u2.applications << a2
u3.applications << a3

puts "User #{User.first.name} has made applications: #{User.first.applications.pluck(:title).join(',')}"
puts "Application #{Application.first.title} belongs to #{Application.first.user.name}"

#user owning houses
u1.houses << h1
u2.houses << h2 << h4
u3.houses << h3
puts "User #{User.first.name} has listed property #{User.first.houses.pluck(:title).join(',')}"
