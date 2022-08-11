class AddEventsRefToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :event, null: false, foreign_key: true
  end
end
