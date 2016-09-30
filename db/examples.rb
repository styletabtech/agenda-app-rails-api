# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(antony jeff matt jason).each do |name|
  email = '#{name}@#{name}.com'
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)
end

Event.create([
               { name: 'Party time',
                 date: '2016-08-04',
                 time: '2000-01-01T18:00:00.000Z',
                 kind: 'social',
                 location: 'Amy\'s house',
                 description: '90\'s bday party',
                 user_id: '1' },
               { name: 'Dinner with Mom',
                 date: '2016-10-09',
                 time: '2000-01-01T16:00:00.000Z',
                 kind: 'social',
                 location: 'Maggianos',
                 description: '',
                 user_id: '1' }
              ])
