json.array! @locations do |location|
  json.latitude location.latitude
  json.longitude location.longitude
  json.address location.address
end