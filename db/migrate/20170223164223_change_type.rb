class ChangeType < ActiveRecord::Migration[5.0]
  def change
    remove_column :exercises, :type
    add_column :exercises, :workout, :string
  end
end
