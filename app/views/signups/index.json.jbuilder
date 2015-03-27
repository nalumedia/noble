json.array!(@signups) do |signup|
  json.extract! signup, :id, :signup_name, :signup_email, :signup_phone, :signup_status
  json.url signup_url(signup, format: :json)
end
