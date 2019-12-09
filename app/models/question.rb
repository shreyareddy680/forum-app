class Question < ApplicationRecord
  has_many :comments, as: :commentable

  validates_presence_of :title, :summary, :author
  validates_uniqueness_of :title, scope: %i[author]
end
