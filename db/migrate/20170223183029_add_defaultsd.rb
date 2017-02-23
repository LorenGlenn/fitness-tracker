class AddDefaultsd < ActiveRecord::Migration[5.0]
  def change
    remove_column :summaries, :total
    add_column :summaries, :total, :integer, default: 0, null: false
  end
end
