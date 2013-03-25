class Bin < ActiveRecord::Base
  attr_accessible :address, :city, :country, :created_by, :created_date, :description, :latitude, :longitude, :postcode, :published, :region
end
