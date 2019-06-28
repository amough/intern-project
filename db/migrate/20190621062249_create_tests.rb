class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :user_id
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
      t.string :ans5
      t.string :ans6
      t.string :ans7
      t.string :ans8
      t.string :ans9
      t.string :ans10
      t.integer :marks

      t.timestamps
    end
  end
end