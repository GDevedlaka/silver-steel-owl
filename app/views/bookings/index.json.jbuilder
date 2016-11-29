json.array!(@bookings) do |b|
  json.extract! b, :id
  json.title "#{b.name} - #{b.service.name}"
  json.description b.service.name
  json.start b.booking_time
  json.end (b.booking_time + b.service.duration * 60)
  json.url business_booking_path(id: b, format: :html)
  json.color @colors[@services.index(b.service.name)]
end
