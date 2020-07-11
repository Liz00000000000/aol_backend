User.destroy_all 
Email.destroy_all
Instant_Message.destroy_all
Interest.destroy_all

40.times do 
    response = RestClient.get('https://randomuser.me/api/')
    data = JSON.parse(response)
    User.create(first_name: data["results"][0]["name"]["first"], last_name: data["results"][0]["name"]["last"], age: data["results"][0]["dob"]["age"], email: data["results"][0]["email"], location: data["results"][0]["location"]["city"], picture: data["results"][0]["picture"]["large"], password: data["results"][0]["login"]["password"])
    end 

80.times do 
    Email.create(sender_id: User.all.sample.id, reciever_id: User.all.sample.id, subject_line: , content: )
end 