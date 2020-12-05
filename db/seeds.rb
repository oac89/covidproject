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
gym = Location.create(name: "Plant Fitness", address: "7895 N. Diversy")
taco = Location.create(name: "Taconazo", address: "3631 N. Central")
mall = Location.create(name: "Brickyard Mall", address: "2530 N. Narragansett")

# mon = Weekday.create(user_id: user.id, location_id: location.id, day: "Monday")
# tue = Weekday.create(user_id: user.id, location_id: location.id, day: "Tuesday")
# wed = Weekday.create(user_id: user.id, location_id: location.id, day: "Wednesday")
# thurs = Weekday.create(user_id: user.id, location_id: location.id, day: "Thursday")
# fri = Weekday.create(user_id: user.id, location_id: location.id, day: "Friday")
# sat = Weekday.create(user_id: user.id, location_id: location.id, day: "Saturday")
# sun = Weekday.create(user_id: user.id, location_id: location.id, day: "Sunday")


alert1 = Alert.create(alert_type: "Possible exposure at a location you visited, quarantine and test ASAP!")
alert2 = Alert.create(alert_type: "Negative for Covid-19 at this time. Please keep practicing social distancing and covering your face including the nose!")
alert3 = Alert.create(alert_type: "You have indicated positive for Covid-19. Please adhere to recommended CDC guidelines and check with your physician.")
alert4 = Alert.create(alert_type: "Vaccinated.")
alert5 = Alert.create(alert_type: "Please indicate your status.")


