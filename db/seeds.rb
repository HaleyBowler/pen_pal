# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.destroy_all
user = User.create(first_name: "Jason", last_name: "haas", email: "jasonbhaas@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
other_user = User.create(first_name: "Haley", last_name: "Bowler", email: "hjb2dq@virginia.edu", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
last_user = User.create(first_name: "Rachel", last_name: "Knapp", email: "rachelknapp@college.harvard.edu", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "happy", last_name: "feet", email: "happyfeet@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "alex", last_name: "bailey", email: "alexbailey@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "orange", last_name: "black", email: "orangeisthenew@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "peeps", last_name: "candy", email: "yummy@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "brit", last_name: "man", email: "bear@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "joy", last_name: "ful", email: "joyful@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "sad", last_name: "ness", email: "sadness@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "pan", last_name: "ic", email: "panic@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")
User.create(first_name: "room", last_name: "mate", email: "roomate@gmail.com", password: "1234", password_confirmation: "1234", location: "Cape Town", english: "Not Interested", french: "Advanced", spanish: "Native speaker", italian: "Beginner", german: "Not Interested")