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

h1 = House.create! title: 'Oakwoods road- amazing family looking for a student!', bed: 3, bath: 2, kitchen:1, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://image.cnbcfm.com/api/v1/image/104548349-Large_house_suburb.jpg?v=1532563813&w=740&h=416", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.07.46-am.png", address: "1 Smith St, Fitzroy VIC 3065"
h2 = House.create! title: 'Warm city home looking for two housemates', bed: 2, bath: 1, kitchen:1, parking: 'no', rent: '220.00', leasem: 3, descrip: 'smelly home', image_1:"https://www.mcdonaldjoneshomes.com.au/sites/default/files/styles/blog_hero_banner/public/st-clair-37-one-hamptons-b-facade-streched.jpg?itok=-W_Q171x", image_2: "https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.18.31-am.png", address: "1 smith street fitzroy, vic 3065"
h3 = House.create! title: 'Room for rent!! St Kilda East ', bed: 4, bath: 2, kitchen:1, parking: 'yes', rent: '370,70', leasem: 12, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.04.06-am-850x455.png", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/Screen-Shot-2019-04-12-at-8.08.00-am.png", address: "34 inkerman st, st kilda, vic 3182"
h4 = House.create! title: 'Large family home in South Yarra - lease transfer', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"
h5 = House.create! title: 'Looking for an amazing person for our room share', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"
h6 = House.create! title: 'Looking for students!', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"
h7 = House.create! title: 'Household of 6 looking for a roomie', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"
h8 = House.create! title: 'looking for a housemate ASAP', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"
h9 = House.create! title: 'House for rent', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"
h10 = House.create! title: 'looking for young couple', bed: 1, bath: 1, kitchen:0, parking: 'yes', rent: '430.00', leasem: 6, descrip: 'lovely home', image_1:"https://indaily.com.au/wp-content/uploads/2019/04/21550-02.jpg", image_2:"https://indaily.com.au/wp-content/uploads/2019/04/076535d181e13704642b3ac94b8c4799a27fe84c.jpg", address: "74 Hawksburn rd South Yarra 3141"


puts "created #{House.count} houses."

#creating suburb profiles for each house
puts "creating suburbs..."
Suburb.destroy_all

s1 = Suburb.create! name: 'Brighton', avrent: 1200, descrip: "Beach side suburb. Brighton is an affluent coastal suburb of Melbourne, Victoria, Australia, 11 km south-east of Melbourne's central business district.[2] Its local government area is the City of Bayside. According to the Australian Bureau of Statistics, Brighton had a population of 23,253 people in 2016.Brighton is named after Brighton in England.
Brighton houses some of the wealthiest citizens in Melbourne with grand homes, and the development of large residential blocks of land. Brighton is also well known for its Dendy Street Beach with its 82 colourful beach boxes. As of July 2020, Brighton has a median house price of AU$2.7 million.", pop: 30000, age: 40, pt: 'yes', image: 'https://www.travelvictoria.com.au/images/brighton/banner2.jpg'
s2 = Suburb.create! name: 'Fitzroy', avrent: 750, descrip: "Young Northern suburb. Fitzroy is an inner suburb of Melbourne, Victoria, Australia, 3 km north-east of the city's Central Business District (CBD) and located in the local government area of the City of Yarra. As of 2016, Fitzroy had a population of 10,445. Planned as Melbourne's first suburb in 1839, it later became one of the city's first areas to gain municipal status, in 1858.[3] It occupies Melbourne's smallest and most densely populated area outside the CBD, just 100 ha.", pop: 27000, age: 27, pt: 'yes', image: 'https://res.akamaized.net/domain/image/fetch/t_web/c_fill,w_600/https://static.domain.com.au/domainblog/uploads/2016/10/15093808/1_grw41a.jpg'
s3 = Suburb.create! name: 'Melbourne CBD', avrent: 450, descrip: "Melbourne's Central business district
Melbourne is the capital city of Victoria, and Australia’s second-largest city. Focused around a central city, Greater Melbourne’s area of approximately 9900 km² of suburbs spread more than 40 km to the south, 30 km to the east, 20 km to the north and sprawl across vast, flat basalt plains to the west.", pop: 200000, age: 40, pt: 'yes', image: 'https://i.nextmedia.com.au/Utils/ImageResizer.ashx?n=http%3a%2f%2fi.nextmedia.com.au%2fNews%2fcrn-690-melbourne-city-buildings.jpg&w=480&c=0&s=1'
s4 = Suburb.create! name: 'Chadstone', avrent: 500, descrip: "Melbourne's Central business district, hadstone is a suburb in Melbourne, Victoria, Australia. Its local government area is the City of Monash. Landmarks include the Waverley Basketball Centre, Jordanville Community Centre and the Matthew Flinders Hotel. ... At the 2016 Census, Chadstone had a population of 8,641.", pop: 200000, age: 40, pt: 'yes', image: 'https://electrolight.com/wp-content/uploads/2017/01/%C2%AEmg-p-0063-1600x1300.jpg'
s5 = Suburb.create! name: 'Brunswick', avrent: 720, descrip: "Melbourne's Central business district, Brunswick is an inner-city suburb of Melbourne, Victoria, Australia, 6 kilometres (3.7 mi) north of Melbourne's central business district. Its local government area is the City of Moreland. ... Brunswick's major thoroughfare is Sydney Road, one of Melbourne's major commercial and nightlife strips.", pop: 200000, age: 40, pt: 'yes', image: 'https://img.theculturetrip.com/1440x807/smart/wp-content/uploads/2019/10/gettyimages-1033402634crop-1.jpg'
s6 = Suburb.create! name: 'St Kilda', avrent: 480, descrip: "Melbourne's Central business district", pop: 200000, age: 40, pt: 'yes', image: 'https://img-4.homely.com.au/image/upload/f_auto,c_scale,w_800/post-251315.jpg'
s7 = Suburb.create! name: 'Frankston', avrent: 370, descrip: "Melbourne's Central business district", pop: 200000, age: 40, pt: 'yes', image: 'https://i.nextmedia.com.au/Utils/ImageResizer.ashx?n=http%3a%2f%2fi.nextmedia.com.au%2fNews%2fcrn-690-melbourne-city-buildings.jpg&w=480&c=0&s=1'
s8 = Suburb.create! name: 'Cheltenham', avrent: 540, descrip: "Melbourne's Central business district", pop: 200000, age: 40, pt: 'yes', image: 'https://www.hornsby.nsw.gov.au/__data/assets/image/0015/139110/CheltenhamOval2.jpg'

puts "created #{Suburb.count} suburbs."

s1.houses << h1 << h2
s2.houses << h4
s3.houses << h3
s4.houses << h5 << h10
s5.houses << h6
s6.houses << h7
s7.houses << h8
s8.houses << h9


puts "testing associations between suburbs and houses"


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
h5.transports << t2 << t4
h6.transports << t2 << t4
h7.transports << t2 << t4
h8.transports << t2 << t4
h9.transports << t2 << t4
h10.transports << t2 << t4



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
u4 = User.create! email: 'andrew@hotmail.com', password: 'chicken', name: 'Malinda', bio: 'Hi im Malinda!', image: 'https://img.cinemablend.com/quill/5/f/c/d/9/5/5fcd951000ebd77f17a2f0e676ee957e2cdccf37.jpg'
u5 = User.create! email: 'harry@hotmail.com', password: 'chicken', name: 'Harry', bio: 'Hi im Harry!', image: 'https://static.toiimg.com/thumb/msid-71970885,width-800,height-600,resizemode-75,imgsize-1145666,pt-32,y_pad-40/71970885.jpg'
u6 = User.create! email: 'scot@hotmail.com', password: 'chicken', name: 'Sam', bio: 'Hi im Sam!', image: 'https://diy-magazine.s3.amazonaws.com/d/diy/Artists/G/Girl-In-red/Girl-in-Red_-by-Chris-Almeida-1.png'

puts "created #{User.count} users."

# add user -< application associations
u1.applications << a2
u2.applications << a1
u3.applications << a3

puts "User #{User.first.name} has made applications: #{User.first.applications.pluck(:title).join(',')}"
puts "Application #{Application.first.title} belongs to #{Application.first.user.name}"

#user owning houses
u1.houses << h1 << h7
u2.houses << h2
u3.houses << h3
u4.houses << h6
u5.houses << h5
u6.houses << h4
puts "User #{User.first.name} has listed property #{User.first.houses.pluck(:title).join(',')}"
