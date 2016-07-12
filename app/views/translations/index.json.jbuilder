json.array!(@translations) do |translation|
  json.extract! translation, :id, :title, :translation_type, :body, :content_producer_id
  json.url translation_url(translation, format: :json)
end
