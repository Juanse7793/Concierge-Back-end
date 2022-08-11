class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :event_id
      t.integer :user_id
      t.date :date
      t.string :city

      t.timestamps
    end
  end
end
