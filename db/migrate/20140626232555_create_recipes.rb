class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :directions
      t.string :ingredients
      t.integer :creator_id
      t.integer :meatcut_id
      t.integer :technique_id

      t.timestamps
    end
  end
end
