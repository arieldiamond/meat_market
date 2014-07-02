class CreatePrimals < ActiveRecord::Migration
  def change
    create_table :primals do |t|
      t.string :anatomy
      t.integer :animal_id

      t.timestamps
    end
  end
end
