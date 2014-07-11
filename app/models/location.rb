class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode


  def address
    "#{street_address} #{street_address2}, #{city}, #{state} #{zip}, US"
  end
end
