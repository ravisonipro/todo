class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|

      t.timestamps
    end
  end
end
