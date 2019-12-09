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
    author: 'user1',
    comments: [{content: 'comment1', commentable_type: 'Question'},{content: 'comment', commentable_type: 'Question'}]
  },
  {
    title: 'Question2',
    summary: 'Question Summary2',
    author: 'user2',
    comments: [{content: 'comment1', commentable_type: 'Question'}]
  },
  {
    title: 'Question5',
    summary: 'Question Summary5',
    author: 'user5',
    comments: [{content: 'comment', commentable_type: 'Question'}]
  },
]

questions.map do |question|
  created_question = Question.find_or_create_by(
    title: question[:title],
    summary: question[:summary] ,
    author: question[:author],
  )
  question[:comments].each_with_index.map do |comment, index|
    Comment.create(
      content: comment[:content],
      commentable_type: comment[:commentable_type],
      commentable_id: created_question[:id]
    )
  end
end
