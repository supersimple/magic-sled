json.array!(@members) do |member|
  json.extract! member, :id, :email, :name
  json.url member_url(member, format: :json)
end
