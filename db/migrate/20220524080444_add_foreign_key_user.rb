class AddForeignKeyUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :skis, :user, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
  end
end
