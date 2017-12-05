json.extract! trip, :id, :id_trip, :id_passenger_trip, :id_guide_passenger, :id_trip_type, :trip_name, :trip_date, :created_at, :updated_at
json.url trip_url(trip, format: :json)
