class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mobile_number, :string
    add_column :users, :username, :string
  end
end
