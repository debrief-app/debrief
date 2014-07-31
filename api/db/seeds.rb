# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

account = Account.first_or_create(name: "Clio")
department = Department.first_or_create(account: account, name: "Product")
team = Team.first_or_create(account: account, department: department, name: "Core")
user = User.create_with(account: account, team: team, display_name: "Demo User", password: "testtest").find_or_create_by(email: "demo@clio.com")

Brief.create(department: department, team: team, user: user, date: Date.today, text: "Started using Debrief!")