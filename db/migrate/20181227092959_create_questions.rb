class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions,id: false do |t|

      t.column :id, 'int(11) PRIMARY KEY'
      t.integer :level
      t.string :content
      t.timestamps
    end
  end
end
