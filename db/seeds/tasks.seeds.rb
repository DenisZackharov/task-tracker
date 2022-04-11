after :projects do
  print "Creating tasks... "
    facegame = Project.find_by_name("Facegame")
    technomer = Project.find_by_name("Technomer")

    technomer.tasks.create!([
      { name: "BE: do something", requester: technomer.employees.first, owner: technomer.employees.first },
      { name: "FE: do something", requester: technomer.employees.first, owner: technomer.employees.first },
    ])

    facegame.tasks.create!([
      { name: "BE: do something else", requester: facegame.employees.first, owner: facegame.employees.first },
      { name: "FE: do something else", requester: facegame.employees.first, owner: facegame.employees.first },
    ])
  puts "Done!"
end
