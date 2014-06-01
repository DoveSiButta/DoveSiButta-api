class DropPicture < ActiveRecord::Migration
  def up
    drop_table :pictures
  end

  def down
    create_table :pictures do |t|
      t.string :description
      t.integer :picturable_id
      t.string :picturable_type

      t.timestamps
    end
  end
end
