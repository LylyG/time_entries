# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

developer1 = Developer.create(email: "developer@developer.com", name: "Mason Matthews", password_digest: "password")

developer2 = Developer.create(email: "lyly@developer.com", name: "Lyly", password_digest: "password")

project1 = Project.create(name: "BlackJack")

project2 = Project.create(name: "Survey Possum")
