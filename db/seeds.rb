# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.destroy_all
user = User.create(first_name: "Jason", last_name: "haas", email: "jasonbhaas@gmail.com", password: "1234", password_confirmation: "1234")
other_user = User.create(first_name: "Haley", last_name: "Bowler", email: "hjb2dq@virginia.edu", password: "1234", password_confirmation: "1234")
last_user = User.create(first_name: "Rachel", last_name: "Knapp", email: "rachelknapp@college.harvard.edu", password: "1234", password_confirmation: "1234")

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