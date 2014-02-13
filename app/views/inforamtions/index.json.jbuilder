json.array!(@inforamtions) do |inforamtion|
  json.extract! inforamtion, :id
  json.url inforamtion_url(inforamtion, format: :json)
end
