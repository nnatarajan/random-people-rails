    #   t.string :name, null:false
    #   t.integer :age, null:false
    #   t.string :race, null:false
    #   t.string :hair_color, null:false
    #   t.boolean :alive, null: false, default: false

# Person.create!(name: "First person",
#                 age: 1,
#                 race: "any",
#                 hair_color: "really?",
#                 alive: true)
50.times do |n|
    name = Faker::Name.unique.name
    age =  Faker::Number.between(1, 110)
    race = Faker::Zelda.character
    hair_color = Faker::Color.color_name
    alive = Faker::Boolean
    Person.create!(name: name,
                    age: age,
                    race: race,
                    hair_color: hair_color,
                    alive: alive)
end







