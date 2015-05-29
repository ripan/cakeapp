# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Venue.destroy_all
Tab.destroy_all
UserTab.destroy_all
Payment.destroy_all

for i in 1..20
 user = User.create(name: "user #{i}")
 venue = Venue.create(name: "venue #{i}", :address => "address #{i}")
 tab = Tab.create(name: "tab #{i}", :venue => venue) if i.even?
 usertab = UserTab.create(user: user, :tab => tab) if i.even?
 payment = Payment.create(amount: i+10, :success => true, :user_tab => usertab ) if i.even?
end