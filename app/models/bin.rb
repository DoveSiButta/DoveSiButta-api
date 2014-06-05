class Bin < ActiveRecord::Base
  mount_uploader :picture, ImageUploader
  attr_accessible :address, :city, :country, :created_by, :created_date, :description, :latitude, :longitude, :postcode, :published, :region, :picture

  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.address = geo.address
      obj.city    = geo.city
      obj.postcode= geo.postal_code
      obj.region  = geo.state
      obj.country = geo.country_code
    end
  end
  # after_validation :reverse_geocode

  validates_presence_of :picture

end
