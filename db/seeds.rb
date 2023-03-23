# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 10.times do
#     Todo.create(
#         title: Faker::Lorem.word,
#         description: Faker::Lorem.sentence,
#         minutes: Faker::Number.number(digits: 3),
#         played: Faker::Number.number(digits: 3),
#         status: Faker::Boolean.boolean
#     )
# end
10.times do
    Alpha.create(
        name: Faker::Lorem.word,
        description: Faker::Lorem.sentence,
       
    )
end



# curl -X POST -H "Content-Type: application/json" \
#     -d  '{"title": "alpha", "description":"beta"}' \
#     'http://localhost:3000/nigams' 