# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.destroy_all
user = User.create(first_name: "Jason", last_name: "haas", email: "jasonbhaas@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town")
other_user = User.create(first_name: "Haley", last_name: "Bowler", email: "hjb2dq@virginia.edu", password: "1234", password_confirmation: "1234", location: "Cape Town")
last_user = User.create(first_name: "Rachel", last_name: "Knapp", email: "rachelknapp@college.harvard.edu", password: "1234", password_confirmation: "1234", location: "Cape Town")
usr = User.create(first_name: "Rachel", last_name: "Knapp", email: "haleyjb123@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town")
userr = User.create(first_name: "Rachel", last_name: "Knapp", email: "bowlerchat@verizon.net", password: "1234", password_confirmation: "1234", location: "Cape Town")
userrr = User.create(first_name: "Rachel", last_name: "Knapp", email: "rafi@ixperience.co.za", password: "1234", password_confirmation: "1234", location: "Cape Town")
userrrr = User.create(first_name: "Rachel", last_name: "Knapp", email: "salman@ixperience.co.za", password: "1234", password_confirmation: "1234", location: "Cape Town")
userrrrr = User.create(first_name: "Rachel", last_name: "Knapp", email: "esm7ft@verizon.net", password: "1234", password_confirmation: "1234", location: "Cape Town")
userrrrrr = User.create(first_name: "Rachel", last_name: "Knapp", email: "eam3ye@virginia.edu", password: "1234", password_confirmation: "1234", location: "Cape Town")

Language.destroy_all
eng = Language.create(name: 'English')
frn = Language.create(name: 'French')
span = Language.create(name: 'Spanish')
elf = Language.create(name: 'Elvish')

Proficiency.destroy_all
Proficiency.create(user_id: user.id, language_id: eng.id, level: 5)
Proficiency.create(user_id: other_user.id, language_id: eng.id, level: 5)
Proficiency.create(user_id: last_user.id, language_id: eng.id, level: 5)
Proficiency.create(user_id: last_user.id, language_id: frn.id, level: 4)
Proficiency.create(user_id: user.id, language_id: span.id, level: 3)
Proficiency.create(user_id: other_user.id, language_id: elf.id, level: 5)
Proficiency.create(user_id: other_user.id, language_id: span.id, level: 1)