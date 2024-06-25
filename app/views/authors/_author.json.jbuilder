json.extract! author, :id, :name, :phone_number, :date_of_birth, :gender, :address, :created_at, :updated_at
json.url author_url(author, format: :json)
