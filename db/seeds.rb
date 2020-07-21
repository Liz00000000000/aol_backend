User.destroy_all 
Email.destroy_all
InstantMessage.destroy_all
Interest.destroy_all
Friend.destroy_all
AwayMessage.destroy_all

boolean = [true, false]

10.times do 
    response = RestClient.get('https://randomuser.me/api/')
    data = JSON.parse(response)
    User.create(first_name: data["results"][0]["name"]["first"], last_name: data["results"][0]["name"]["last"], age: data["results"][0]["dob"]["age"], email: data["results"][0]["email"], location: data["results"][0]["location"]["city"], picture: data["results"][0]["picture"]["large"], password: data["results"][0]["login"]["password"], isOnline: boolean.sample, username: Faker::Internet.username)
    end 

900.times do 
    Email.create(read: boolean.sample, sender_id: User.all.sample.id, reciever_id: User.all.sample.id, subject_line: Faker::Beer.hop, content: Faker::Movies::PrincessBride.quote )
end 

80.times do 
    InstantMessage.create(sender_id: User.all.sample.id, reciever_id: User.all.sample.id, content: Faker::TvShows::Friends.quote)
end 

160.times do 
    Interest.create(user_id: User.all.sample.id, topic: Faker::House.room)
end 

200.times do 
    Friend.create(friend_1: User.all.sample.id, friend_2: User.all.sample.id)
end 

40.times do 
    AwayMessage.create(user_id: User.all.sample.id, message: Faker::Hipster.sentence)
end 