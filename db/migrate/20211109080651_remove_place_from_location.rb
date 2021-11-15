class RemovePlaceFromLocation < ActiveRecord::Migration[6.1]
  def change
    remove_column :locations, :place, :string
  end
end
