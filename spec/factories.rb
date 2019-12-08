# frozen_string_literal: true

FactoryGirl.define do
  factory :question do
    sequence(:title) { |n| "question_title_#{n}" }
    summary 'question summary'
    user 'test user'
  end
end

FactoryGirl.define do
  factory :comment do
    sequence(:text) { |n| "comment_#{n}" }
    question_id { create(:question).id }
  end
end
