# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Location.destroy_all 
Weekday.destroy_all 
Alert.destroy_all 

    15.times do 
        User.create([{
            name:Faker::FunnyName.unique.name, 
            age: rand(0..100), 
            status: "healthy"
            }])
    end  

    2.times do 
        User.create([{
            name:Faker::FunnyName.unique.name, 
            age: rand(0..100), 
            status: "unknown"
            }])
    end 

    3.times do 
        User.create([{
            name:Faker::FunnyName.unique.name, 
            age: rand(0..100), 
            status: "infected"
            }])
    end 

grocery_store = Location.create(name: "Tony's", address: "4894 W. Milwaukee Ave")
bank = Location.create(name: "Bank of America", address: "7894 W. Damen Ave")
coffee = Location.create(name: "Ipsento", address: "4613 N. California")



mon = Weekday.create(user_id: user.id, location_id: location.id, day: "Monday")
tue = Weekday.create(user_id: user.id, location_id: location.id, day: "Tuesday")
wed = Weekday.create(user_id: user.id, location_id: location.id, day: "Wednesday")
thurs = Weekday.create(user_id: user.id, location_id: location.id, day: "Thursday")
fri = Weekday.create(user_id: user.id, location_id: location.id, day: "Friday")
sat = Weekday.create(user_id: user.id, location_id: location.id, day: "Saturday")
sun = Weekday.create(user_id: user.id, location_id: location.id, day: "Sunday")





