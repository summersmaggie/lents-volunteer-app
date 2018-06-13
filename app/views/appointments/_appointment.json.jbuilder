json.extract! appointment, :id, :name, :start_time, :address, :contact_info, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
