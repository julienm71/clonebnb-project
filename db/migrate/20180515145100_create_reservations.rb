class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :reserved_at
      t.references :cateogry
      t.timestamps
    end
  end
end
