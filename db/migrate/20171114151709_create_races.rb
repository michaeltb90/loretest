class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :sentience_id
      t.text :description

      t.timestamps
    end
  end
end
