class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :animal
      t.string :meat_name

      t.timestamps
    end
  end
end
