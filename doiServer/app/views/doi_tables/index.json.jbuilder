json.array!(@doi_tables) do |doi_table|
  json.extract! doi_table, :id, :name, :desc, :url
  json.url doi_table_url(doi_table, format: :json)
end
