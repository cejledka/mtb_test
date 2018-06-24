class ChangeForeignKeysOnDelete < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :camp_sites, :cities
    add_foreign_key :camp_sites, :cities, on_delete: :cascade, on_update: :cascade

    remove_foreign_key :cities, :regions
    add_foreign_key :cities, :regions, on_delete: :cascade, on_update: :cascade

    remove_foreign_key :regions, :countries
    add_foreign_key :regions, :countries, on_delete: :cascade, on_update: :cascade
  end
end
