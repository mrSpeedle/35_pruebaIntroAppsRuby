json.extract! tweet, :id, :description, :user_name, :softdelete, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
