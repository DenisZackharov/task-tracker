print "Creating users... "

  User.create!(first_name: "John", last_name: "Doe", email: "test1@example.com", password: "123456")
puts "Done!"
