class CreateSkis < ActiveRecord::Migration[6.1]
  def change
    create_table :skis do |t|
      t.string :types
      t.string :available
      t.boolean :poles
      t.integer :price
      t.integer :size

      t.timestamps
    end
  end
end
