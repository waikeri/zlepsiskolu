json.array!(@votes) do |vote|
  json.extract! vote, :id, :idea_id
  json.url vote_url(vote, format: :json)
end
