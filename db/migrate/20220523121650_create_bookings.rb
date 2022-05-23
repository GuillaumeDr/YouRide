class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :end_date
      t.date :start_date
      t.references  :ski, foreign_key: true

      t.timestamps
    end
  end
end
