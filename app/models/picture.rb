class Picture < ActiveRecord::Base
  attr_accessible :image, :description, :picturable_id, :picturable_type

  belongs_to :bin, :polymorphic => true

  mount_uploader :image, ImageUploader

end
