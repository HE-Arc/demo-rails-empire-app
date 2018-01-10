class AddCategoryToTrooper < ActiveRecord::Migration[5.0]
  def change
    add_reference :troopers, :category, foreign_key: true
  end
end
