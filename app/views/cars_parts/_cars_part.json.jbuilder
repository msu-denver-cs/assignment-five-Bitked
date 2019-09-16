json.extract! cars_part, :id, :name, :car_id, :part_id, :created_at, :updated_at
json.url cars_part_url(cars_part, format: :json)
