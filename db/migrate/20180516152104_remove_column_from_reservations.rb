class RemoveColumnFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :cateogry_id, :string
  end
end
