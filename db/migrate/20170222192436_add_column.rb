class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :summaries, :date, :date 
  end
end
