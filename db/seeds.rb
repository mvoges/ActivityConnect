# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
# Admin user
#

admin = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << admin.email

#
# Other users
#

alice = User.create!(
  role: 'caretaker',
  first_name: 'Alice',
  last_name: 'Example',
  email: 'alice.example@example.com',
  password: 'alicealice',
  password_confirmation: 'alicealice'
)
bob = User.create!(
  role: 'user',
  first_name: 'Bob',
  last_name: 'Example',
  email: 'bob.example@example.com',
  password: 'bobbob',
  password_confirmation: 'bobbob'
)
chuck = User.create!(
  role: 'caretaker',
  first_name: 'Chuck',
  last_name: 'Chuckles',
  email: 'chuck.chuckles@example.com',
  password: 'chuckchuck',
  password_confirmation: 'chuckchuck'
)

#
# Activity
#

Activity.create(
  title: "Walking around the lake",
  description: "Who would like to join me for a walk around Trummen lake next Sunday?",
  when: Time.now + 3.weeks,
  author: alice
)

Activity.create(
  title: "Looking for chess partner",
  description: "I'd be interested in playing a game of chess every week. We could meet at my place.",
  when: Time.now + 2.weeks,
  author: bob
)
