class Question < ApplicationRecord
  has_many :comments, dependent: :destroy
end
