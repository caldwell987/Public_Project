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


u4 = User.create(username: "John999", password: "Password", password_confirmation: "Password", firstname: 'John', lastname: 'Johnson')
u5 = User.create(username: "Steven111", password: "Password", password_confirmation: "Password", firstname: 'Steven', lastname: 'Nguyen')
u6 = User.create(username: "Michael555", password: "Password", password_confirmation: "Password", firstname: 'Michael', lastname: 'James')

# u4 = User.create(first_name: 'John', last_name: 'Johnson')
# u5 = User.create(first_name: 'Steven', last_name: 'Nguyen')
# u6 = User.create(first_name: 'Michael', last_name: 'James')




Contact.create(value: '(281) 704-3291', kind: 'Phone', user_id: u1.id)
Contact.create(value: 'david@gmail.com', kind: "Email", user_id: u1.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u1.id)
Contact.create(value: 'www.instagram.com/david099', kind: "Social", user_id: u1.id)

Contact.create(value: '(832) 333-3391', kind: 'Phone', user_id: u2.id)
Contact.create(value: 'James@gmail.com', kind: "Email", user_id: u2.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u2.id)
Contact.create(value: 'www.instagram.com/James111', kind: "Social", user_id: u2.id)

Contact.create(value: '(832) 1111-1111', kind: 'Phone', user_id: u3.id)
Contact.create(value: 'Larry@gmail.com', kind: "Email", user_id: u3.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u3.id)
Contact.create(value: 'www.instagram.com/larry123', kind: "Social", user_id: u3.id)

Contact.create(value: '(832) 222-2222', kind: 'Phone', user_id: u4.id)
Contact.create(value: 'John@gmail.com', kind: "Email", user_id: u4.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u4.id)
Contact.create(value: 'www.instagram.com/john123', kind: "Social", user_id: u4.id)

Contact.create(value: '(832) 333-4444', kind: 'Phone', user_id: u5.id)
Contact.create(value: 'Steven@gmail.com', kind: "Email", user_id: u5.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u5.id)
Contact.create(value: 'www.instagram.com/Steven123', kind: "Social", user_id: u5.id)

Contact.create(value: '(832) 555-5555', kind: 'Phone', user_id: u6.id)
Contact.create(value: 'Michael@gmail.com', kind: "Email", user_id: u6.id)
Contact.create(value: 'www.website.com', kind: "Website", user_id: u6.id)
Contact.create(value: 'www.instagram.com/Michael123', kind: "Social", user_id: u6.id)

# v1 = Value.create(value:'phone', contact_type_id: ct1.id)
# v2 = Value.create(value:'email', contact_type_id: ct2.id)
# v3 = Value.create(value:'website', contact_type_id: ct3.id)
# v4 = Value.create(value:'Social', contact_type_id: ct4.id)









puts "we seeded homie"