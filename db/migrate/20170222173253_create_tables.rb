class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :summaries do |t|
      t.integer :total
      t.integer :consumed
      t.integer :burned
      t.integer :user_id
    end
    create_table :foods do |t|
      t.string :name
      t.integer :calorie_intake
      t.integer :summary_id

    end
    create_table :exercises do |t|
      t.string :type
      t.integer :calorie_burn
      t.integer :summary_id
    end
  end
end
