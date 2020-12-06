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


    
                    
mark = User.create(name: "Mark Z. Spot", age: 71, status: "healthy")
clara = User.create(name: "Clara Nett", age: 21, status: "healthy")
gladys = User.create(name: "Gladys Eeya", age: 52, status: "healthy")
sir = User.create(name: "Sir Fin Waves", age: 30, status: "healthy")
sue = User.create(name: "Sue Permann", age: 3, status: "healthy")
brandy = User.create(name: "Brandy Anne Koch", age: 17, status: "healthy")
alec = User.create(name: "Alec Tricity", age: 22, status: "healthy")
dale = User.create(name: "Dale E. Bread", age: 61, status: "healthy")
ilene = User.create(name: "Ilene Left", age: 32, status: "healthy")
chris = User.create(name: "Chris P. Nugget", age: 51, status: "healthy")
dwayne = User.create(name: "Dwayne Pipe", age: 0, status: "healthy")
i_pullem = User.create(name: "I. Pullem", age: 36, status: "healthy")
trina = User.create(name: "Trina Forest", age: 5, status: "healthy")
al = User.create(name: "Al O'Moaney", age: 91, status: "healthy")
carson = User.create(name: "Carson O. Gin", age: 84, status: "unknown")
tad = User.create(name: "Tad Pohl", age: 36, status: "unknown")
sid = User.create(name: "Sid Down", age: 52, status: "infected")
brock = User.create(name: "Brock Lee", age: 68, status: "infected")
rod = User.create(name: "Rod N. Reel", age: 16, status: "infected")


grocery_store = Location.create(name: "Tony's", address: "4894 W. Milwaukee Ave")
bank = Location.create(name: "Bank of America", address: "7894 W. Damen Ave")
coffee = Location.create(name: "Ipsento", address: "4613 N. California")
gym = Location.create(name: "Plant Fitness", address: "7895 N. Diversy")
taco = Location.create(name: "Taconazo", address: "3631 N. Central")
mall = Location.create(name: "Brickyard Mall", address: "2530 N. Narragansett")

mon = Weekday.create(user_id: ilene.id, location_id: taco.id, day: "Monday")
tue = Weekday.create(user_id: carson.id, location_id: coffee.id, day: "Tuesday")
wed = Weekday.create(user_id: tad.id, location_id: mall.id, day: "Wednesday")
thurs = Weekday.create(user_id: brock.id, location_id: mall.id, day: "Thursday")
fri = Weekday.create(user_id: rod.id, location_id: bank.id, day: "Friday")
sat = Weekday.create(user_id: dale.id, location_id: ipsento.id, day: "Saturday")
sun = Weekday.create(user_id: alec.id, location_id: gym.id, day: "Sunday") 
sun = Weekday.create(user_id: al.id, location_id: gym.id, day: "Sunday")
wed = Weekday.create(user_id: mark.id, location_id: mall.id, day: "Wednesday")
wed = Weekday.create(user_id: sid.id, location_id: taco.id, day: "Wednesday")



alert1 = Alert.create(alert_type: "Possible exposure at a location you visited, quarantine and test ASAP!", user_id: User.first.id)
alert2 = Alert.create(alert_type: "Negative for Covid-19 at this time. Please keep practicing social distancing and covering your face including the nose!", user_id: User.second.id)
alert3 = Alert.create(alert_type: "You have indicated positive for Covid-19. Please adhere to recommended CDC guidelines and check with your physician.", user_id: User.first.id)
alert4 = Alert.create(alert_type: "Vaccinated.", user_id: User.second.id)
alert5 = Alert.create(alert_type: "Please indicate your status.", user_id: User.first.id)

