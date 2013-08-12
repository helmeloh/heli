json.array!(@you2_helis) do |you2_heli|
  json.extract! you2_heli, :content, :user_id
  json.url you2_heli_url(you2_heli, format: :json)
end
