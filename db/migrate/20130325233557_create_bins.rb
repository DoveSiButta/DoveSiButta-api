class CreateBins < ActiveRecord::Migration
  def change
    create_table :bins do |t|
      t.string :description
      t.datetime :created_date
      t.string :created_by
      t.string :address
      t.string :city
      t.string :postcode
      t.string :region
      t.string :country
      t.float :latitude
      t.float :longitude
      t.boolean :published

      t.timestamps
    end
  end
end
