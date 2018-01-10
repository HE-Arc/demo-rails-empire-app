class CreateTroopers < ActiveRecord::Migration[5.0]
  def change
    create_table :troopers do |t|
      t.string :name
      t.decimal :age
      t.decimal :strength
      t.boolean :alive, default: true

      t.timestamps
    end
  end
end
