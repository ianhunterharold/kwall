# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1= User.create(name: "Ian Harold", title: "Student")
u2= User.create(name: "Kara Odle", title: "Student")
u3= User.create(name: "Just Maple", title: "Student")
u4= User.create(name: "Krista Loven", title: "Student")
u5= User.create(name: "Krista Loven", title: "Student")
u6= User.create(name: "Brian Ly", title: "Student")
u7= User.create(name: "Ren Burnett", title: "Student")
u8= User.create(name: "Megan Scarlett", title: "Student")
u9= User.create(name: "David Stoll", title: "Instructor")
u10= User.create(name: "Hall Dunn ", title: "Instructor")

k1 = Karma.create(user_id:1, comment:"You are the best!" )
k2 = Karma.create(user_id:2, comment:"Thank you for helping me!" )
k3 = Karma.create(user_id:3, comment:"You teach me so much, thank you!" )
k4 = Karma.create(user_id:3, comment:"Loved seeing you explain the whiteboard problem, that helped me understand sort so much more!" )

p1 = Prefill.create(user_id:1, selection: "Fast Responder")
p2 = Prefill.create(user_id:2, selection: "Always on Time")
p3 = Prefill.create(user_id:2, selection: "Great at Asking Quesitons")
p4 = Prefill.create(user_id:3, selection: "Apporachable")
p5 = Prefill.create(user_id:4, selection: "Thinks Big")
p6 = Prefill.create(user_id:5, selection: "Isn't Afraid to Dare")

g1 = Group.create(name: "Sports")
g2 = Group.create(name: "Dogs")
g3 = Group.create(name: "Alma Mater")
g4 = Group.create(name: "Cats")
g5 = Group.create(name: "Cooking")

ug1 = GroupUser.create(user_id: 1,group_id: 3)
ug2 = GroupUser.create(user_id: 2,group_id: 3)
ug3 = GroupUser.create(user_id: 3,group_id: 1)
ug4 = GroupUser.create(user_id: 3,group_id: 1)
ug5 = GroupUser.create(user_id: 2,group_id: 3)

