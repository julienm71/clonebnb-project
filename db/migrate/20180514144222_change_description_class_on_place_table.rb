class ChangeDescriptionClassOnPlaceTable < ActiveRecord::Migration[5.1]
  def change
    change_column :places, :description, :text
  end
end
