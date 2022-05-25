class AddCoordinatesToSkis < ActiveRecord::Migration[6.1]
  def change
    add_column :skis, :latitude, :float
    add_column :skis, :longitude, :float
  end
end
