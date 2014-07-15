class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  has_many :employees
  accepts_nested_attributes_for :employees, allow_destroy: true
  after_initialize :add_employee


  def address
    "#{street_address} #{street_address2}, #{city}, #{state} #{zip}, US"
  end

  private
  def add_employee
    employees.build if employees.empty?
  end
end
