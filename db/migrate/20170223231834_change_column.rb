class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :summaries, :consumed
    remove_column :summaries, :burned
    add_column :summaries, :consumed, :integer, default: 0, null: false
    add_column :summaries, :burned, :integer, default: 0, null: false
  end
end
