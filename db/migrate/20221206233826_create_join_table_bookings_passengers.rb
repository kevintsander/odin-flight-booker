class CreateJoinTableBookingsPassengers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :bookings, :passengers do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :passenger, null: false, foreign_key: true
    end
  end
end
