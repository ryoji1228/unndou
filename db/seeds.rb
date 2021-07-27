# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


work_1 = Work.create(name:"ランニング10分", cost:7, explanation:"説明")
work_2 = Work.create(name:"ランニング20分", cost:10, explanation:"説明")

user_1 = User.create(name:"ryoji", email:"sample1@example.com", password:"password1")
user_2 = User.create(name:"ryoji2", email:"sample2@example.com", password:"password2")

post_1 = Post.create(user_id: user_1.id, text: "text")
post_2 = Post.create(user_id: user_2.id, text: "text")

Measurement.create(weight:60, fat_rate:10, user_id: user_1.id)
Measurement.create(weight:60, fat_rate:10, user_id: user_2.id)

exercise_1 = Exercise.create(user_id: user_1.id)
exercise_2 = Exercise.create(user_id: user_2.id)

ExerciseWork.create(exercise_id: exercise_1.id, work_id: work_1.id)
ExerciseWork.create(exercise_id: exercise_2.id, work_id: work_2.id)

Like.create(user_id: user_1.id, post_id: post_1.id)
Like.create(user_id: user_2.id, post_id: post_2.id)