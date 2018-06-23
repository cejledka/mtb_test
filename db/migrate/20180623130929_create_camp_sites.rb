class CreateCampSites < ActiveRecord::Migration[5.2]
  def change
    create_table :camp_sites do |t|
      t.string :name
      t.string :description
      t.references :city, foreign_key: true
      t.integer :distance
      t.integer :price

      t.timestamps
    end
  end
end
