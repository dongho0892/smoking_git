class CreateSmokingAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :smoking_areas do |t|
      t.string :area_name
      t.integer :latitude
      t.integer :longitude
      t.string :area_catagory
      t.string :statute
      t.integer :penalty
      t.string :address

      t.timestamps
    end
  end
end
