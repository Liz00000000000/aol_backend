User.destroy_all 
Email.destroy_all
InstantMessage.destroy_all
Interest.destroy_all

30.times do 
    response = RestClient.get('https://randomuser.me/api/')
    data = JSON.parse(response)
    User.create(first_name: data["results"][0]["name"]["first"], last_name: data["results"][0]["name"]["last"], age: data["results"][0]["dob"]["age"], email: data["results"][0]["email"], location: data["results"][0]["location"]["city"], picture: data["results"][0]["picture"]["large"], password: data["results"][0]["login"]["password"])
    end 

100.times do 
    Email.create(sender_id: User.all.sample.id, reciever_id: User.all.sample.id, subject_line: Faker::Beer.hop, content: Faker::Movies::PrincessBride.quote )
end 

80.times do 
    InstantMessage.create(sender_id: User.all.sample.id, reciever_id: User.all.sample.id, content: Faker::TvShows::Friends.quote)
end 

160.times do 
    Interest.create(user_id: User.all.sample.id, topic: Faker::House.room)
end 