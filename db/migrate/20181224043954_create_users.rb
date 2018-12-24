class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users ,id: false do |t|
      t.column :id, 'int(11) PRIMARY KEY'
      t.string :mail 
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
