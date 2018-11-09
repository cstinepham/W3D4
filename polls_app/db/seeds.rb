# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username: "Christina")
user2 = User.create!(username: "Christine")
user3 = User.create!(username: "Jane")
user4 = User.create!(username: "Bobby")
user5 = User.create!(username: "Chris")

poll1 = Poll.create!(title: "Poll1 Title", author_id: user1.id)

question1 = Question.create!(text: "Question1 1", poll_id: poll1.id)
answer_choice1 = AnswerChoice.create!(text: "Answer choice 1 1", question_id: question1.id)
answer_choice2 = AnswerChoice.create!(text: "Answer choice 1 2", question_id: question1.id)

poll2 = Poll.create!(title: "Poll2 Title", author_id: user1.id)
question2 = Question.create!(text: "Question2 1", poll_id: poll2.id)


answer_choice3 = AnswerChoice.create!(text: "Answer choice 2 1", question_id: question2.id)
answer_choice4 = AnswerChoice.create!(text: "Answer choice 2 2", question_id: question2.id)


response1 = Response.create!(user_id: user5.id, answer_choice_id: answer_choice2.id)
response2 = Response.create!(user_id: user4.id, answer_choice_id: answer_choice1.id)
response3 = Response.create!(user_id: user5.id, answer_choice_id: answer_choice3.id)
response4 = Response.create!(user_id: user4.id, answer_choice_id: answer_choice3.id)



