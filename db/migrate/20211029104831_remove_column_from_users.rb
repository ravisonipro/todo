class RemoveColumnFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :mobile_number, :int
  end
end
