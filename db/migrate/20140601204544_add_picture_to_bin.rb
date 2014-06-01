class AddPictureToBin < ActiveRecord::Migration
  def change
    add_column :bins, :picture, :string
  end
end
