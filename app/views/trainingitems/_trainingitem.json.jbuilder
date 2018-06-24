json.extract! trainingitem, :id, :name, :description, :status, :created_at, :updated_at
json.url trainingitem_url(trainingitem, format: :json)
