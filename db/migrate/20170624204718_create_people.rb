class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name, null:false
      t.integer :age, null:false
      t.string :race, null:false
      t.string :hair_color, null:false
      t.boolean :alive, null: false, default: false

      t.timestamps
    end
  end
end
