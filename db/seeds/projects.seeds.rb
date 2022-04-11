after :users do
  print "Creating projects... "

    facegame = Project.create!(name: "Facegame", description: "Проект по угадыванию лиц в компании")
    facegame_admin = User.find_by_first_name("John")
    facegame_employee = User.find_by_first_name("Jack")
    technomer = Project.create!(name: "Technomer")
    technomer_admin = User.find_by_first_name("Doe")
    technomer_employee = User.find_by_first_name("Doss")

    ProjectUser.create!(project: facegame, user: facegame_admin, role: "admin")
    ProjectUser.create!(project: facegame, user: facegame_employee, role: "employee")
    ProjectUser.create!(project: technomer, user: technomer_admin, role: "admin")
    ProjectUser.create!(project: technomer, user: technomer_employee, role: "employee")

  puts "Done!"
end
