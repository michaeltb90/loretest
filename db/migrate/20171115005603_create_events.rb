class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :timeline_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
