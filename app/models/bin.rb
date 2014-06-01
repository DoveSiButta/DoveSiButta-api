class Bin < ActiveRecord::Base
  mount_uploader :picture, ImageUploader
  attr_accessible :address, :city, :country, :created_by, :created_date, :description, :latitude, :longitude, :postcode, :published, :region, :picture

  validates_presence_of :picture

  #for future query on close bins
  #def self.near_search(params)
  #  if params
  #    near(params, 50, :order => :distance)
  #  else
  #    all
  #  end
  #end

end
