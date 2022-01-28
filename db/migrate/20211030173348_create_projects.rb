class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :kind 
      
      t.date :due_date
  
      t.timestamps
    end
  end
end
