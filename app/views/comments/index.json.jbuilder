json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment, :things_id
  json.url comment_url(comment, format: :json)
end
