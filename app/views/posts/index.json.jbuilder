json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :category
  json.url post_url(post, format: :json)
end