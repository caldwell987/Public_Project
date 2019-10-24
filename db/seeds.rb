# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Contact.destroy_all




u1 = User.create(username: "David999", password: "Password", password_confirmation: "Password", firstname: 'David', lastname: 'Caldwell')
u2 = User.create(username: "James111", password: "Password", password_confirmation: "Password", firstname: 'James', lastname: 'Smith')
u3 = User.create(username: "Larry555", password: "Password", password_confirmation: "Password", firstname: 'Larry', lastname: 'Fette')



# u2 = User.create(first_name: 'John', last_name: 'Johnson')
# u3 = User.create(first_name: 'Steven', last_name: 'Nguyen')
# u4 = User.create(first_name: 'Michael', last_name: 'James')



Contact.create(value: '(281) 704-3291', kind: 'Phone', user_id: u1.id)
Contact.create(value: 'david@gmail.com', kind: "Email", user_id: u1.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u1.id)
Contact.create(value: 'www.instagram.com/david099', kind: "Social", user_id: u1.id)

Contact.create(value: '(832) 333-3391', kind: 'Phone', user_id: u2.id)
Contact.create(value: 'James@gmail.com', kind: "Email", user_id: u2.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u2.id)
Contact.create(value: 'www.instagram.com/James111', kind: "Social", user_id: u2.id)




# v1 = Value.create(value:'phone', contact_type_id: ct1.id)
# v2 = Value.create(value:'email', contact_type_id: ct2.id)
# v3 = Value.create(value:'website', contact_type_id: ct3.id)
# v4 = Value.create(value:'Social', contact_type_id: ct4.id)









puts "we seeded homie"