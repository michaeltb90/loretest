class CreateSentiences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentiences do |t|
      t.string :name

      t.timestamps
    end
  end
end
