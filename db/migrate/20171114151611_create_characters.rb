class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.integer :race_id
      t.integer :gender_id
      t.integer :birth_date
      t.integer :death_date
      t.integer :faction_id
      t.string :birth_location
      t.text :bio

      t.timestamps
    end
  end
end
