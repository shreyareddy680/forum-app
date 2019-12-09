# frozen_string_literal: true

FactoryGirl.define do
    factory :question do
      sequence(:title) { |n| "question_title_#{n}" }
      summary 'question summary'
      author 'test user'
    end
  end
  
  FactoryGirl.define do
    factory :comment do
      sequence(:content) { |n| "comment_#{n}" }
      commentable_id { create(:question).id }
      commentable_type 'comment'
    end
  end