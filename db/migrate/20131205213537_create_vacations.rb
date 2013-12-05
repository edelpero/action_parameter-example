class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :destination
      t.integer :price
      t.boolean :hidden

      t.timestamps
    end
  end
end
