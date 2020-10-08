json.extract! post, :id, :Title, :Genre, :Description, :Number_of_pages, :created_at, :updated_at
json.url post_url(post, format: :json)
