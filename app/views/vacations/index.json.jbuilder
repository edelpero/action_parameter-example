json.array!(@vacations) do |vacation|
  json.extract! vacation, :id, :destination, :price, :hidden
  json.url vacation_url(vacation, format: :json)
end
