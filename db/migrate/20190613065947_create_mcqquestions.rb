class CreateMcqquestions < ActiveRecord::Migration[5.2]
  def change
    create_table :mcqquestions do |t|
      t.text :Question
      t.text :Option_A
      t.text :Option_B
      t.text :Option_c
      t.text :Option_D
      t.text :Correct_Option

      t.timestamps
    end
  end
end
