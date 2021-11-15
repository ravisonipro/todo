class AddColumnsToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :avatar, :string
  end
end
