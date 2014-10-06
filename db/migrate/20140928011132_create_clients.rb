class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :short_description
      t.string :description
      t.string :notable_achievement
      t.string :icon
      t.string :icon_mouseover
      t.string :screenshot
      t.boolean :active

      t.timestamps
    end
  end
end
