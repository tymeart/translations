json.array!(@content_producers) do |content_producer|
  json.extract! content_producer, :id, :name
  json.url content_producer_url(content_producer, format: :json)
end
