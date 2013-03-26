class Bin < ActiveRecord::Base
  attr_accessible :address, :city, :country, :created_by, :created_date, :description, :latitude, :longitude, :postcode, :published, :region

  has_one :picture, :as => :picturable, :dependent => :destroy

  #validates_presence_of :picture, :on => :create

end
