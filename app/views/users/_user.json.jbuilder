json.extract! user, :id, :first_name, :last_name, :email, :cell_phone, :encrypted_password, :reset_password_token, :reset_password_sent_at, :user_create_at, :created_at, :updated_at
json.url user_url(user, format: :json)
