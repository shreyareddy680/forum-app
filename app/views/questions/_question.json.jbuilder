json.extract! question, :id, :title, :summary, :user, :created_at, :updated_at
json.url question_url(question, format: :json)
