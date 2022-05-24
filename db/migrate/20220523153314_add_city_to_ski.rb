class AddCityToSki < ActiveRecord::Migration[6.1]
  def change
    add_column :skis, :city, :string
  end
end
