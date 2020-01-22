json.array!(@ideas) do |idea|
  json.extract! idea, :id, :user_id, :content, :title, :first_name, :last_name, :timeout_at
  json.url idea_url(idea, format: :json)
end
