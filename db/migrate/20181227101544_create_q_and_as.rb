class CreateQAndAs < ActiveRecord::Migration[5.2]
  def change
    create_table :q_and_as do |t|
      t.integer :profile_id
      t.integer :question_id
      t.text :answer

      t.timestamps
    end
  end
end
