json.array!(@conditions) do |condition|
  json.extract! condition, :id, :name, :item, :key, :order_count, :cur_count, :user_id
  json.url condition_url(condition, format: :json)
end
