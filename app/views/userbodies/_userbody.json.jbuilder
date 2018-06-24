json.extract! userbody, :id, :date, :weight, :bodyfat, :created_at, :updated_at
json.url userbody_url(userbody, format: :json)
