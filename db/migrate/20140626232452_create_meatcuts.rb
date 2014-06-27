class CreateMeatcuts < ActiveRecord::Migration
  def change
    create_table :meatcuts do |t|
      t.string :cut_name
      t.integer :primal_id

      t.timestamps
    end
  end
end
