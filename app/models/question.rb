class Question < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates_presence_of :title, :summary, :user
  validates_uniqueness_of :title, scope: %i[user]
end
