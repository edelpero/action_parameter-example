json.array!(@toys) do |toy|
  json.extract! toy, :id, :name, :price, :hidden
  json.url toy_url(toy, format: :json)
end
