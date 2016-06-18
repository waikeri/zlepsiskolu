class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :user_id
      t.text :content
      t.string :title
      t.string :first_name
      t.string :last_name
      t.datetime :timeout_at

      t.timestamps null: false
    end
  end
end
