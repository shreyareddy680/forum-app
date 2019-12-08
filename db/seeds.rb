# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rake db:seed
questions = [
  {
    title: 'Question1',
    summary: 'Question Summary1',
    user: 'user1',
    comments: ['comment1', 'comment2']
  },
  {
    title: 'Question2',
    summary: 'Question Summary2',
    user: 'user2',
    comments: ['comment', 'comment2']
  },
  {
    title: 'Question3',
    summary: 'Question Summary3',
    user: 'user3',
    comments: ['comment3']
  },
  {
    title: 'Question4',
    summary: 'Question Summary4',
    user: 'user4',
    comments: ['comment1', 'comment2', 'comment5']
  },
  {
    title: 'Question5',
    summary: 'Question Summary5',
    user: 'user5',
    comments: ['comment']
  },
]

questions.map do |question|
  created_question = Question.find_or_create_by(
    title: question[:title],
    summary: question[:summary] ,
    user: question[:user],
  )
  question[:comments].each_with_index.map do |comment, index|
    Comment.create(
      text: comment,
      question_id: created_question[:id]
    )
  end
end
