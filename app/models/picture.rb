class Picture < ActiveRecord::Base
  attr_accessible :description, :picturable_id, :picturable_type

  belongs_to :bin, :polymorphic => true

end
