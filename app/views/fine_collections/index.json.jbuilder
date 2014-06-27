json.array!(@fine_collections) do |fine_collection|
  json.extract! fine_collection, :id, :fine_amount, :due_date, :return_date
  json.url fine_collection_url(fine_collection, format: :json)
end
