# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(
  name: "Mohamed",
  email: "mohamed@gmail.com",
  password: 'password',
  password_confirmation: 'password'
)

gym1 = user1.create_gym

gym1.exercises.create(
  {
    exercise_id: 1,
    name: "Bench Press"
  }
)

gym1.exercises.create(
  {
    exercise_id: 2,
    name: "Deadlift"
  }
)

gym1.exercises.create(
  {
    exercise_id: 3,
    name: "Bench Press"
  }
)

gym1.exercises.first.sets.create(
  {
    weight: 100,
    reps: 15
  }
)
