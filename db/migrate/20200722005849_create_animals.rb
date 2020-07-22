class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :species
      t.boolean :endangered

      t.timestamps
    end
  end
end
