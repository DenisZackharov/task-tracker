print "Creating users... "
  User.create!(first_name: "John", last_name: "Doe", email: "test@example.com", password: "123456")
  User.create!(first_name: "Doe", last_name: "John", email: "test_1@example.com", password: "123456")
  User.create!(first_name: "Jack", last_name: "Doss", email: "test_2@example.com", password: "123456")
  User.create!(first_name: "Doss", last_name: "Jack", email: "test_3@example.com", password: "123456")
puts "Done!"
