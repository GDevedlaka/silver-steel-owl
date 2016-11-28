json.array!(@bookings) do |b|
  json.extract! b, :id
  json.title "abc"
  json.description "abc"
  json.start b.booking_time
  json.end ""
  json.url business_booking_path(id: b, format: :html)
end

