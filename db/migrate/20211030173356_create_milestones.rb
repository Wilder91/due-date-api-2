class CreateMilestones < ActiveRecord::Migration[6.1]
  def change
    create_table :milestones do |t|
      t.string :name
      t.text :description 
      t.integer :lead_time
      t.integer :project_id
      t.timestamps
    end
  end
end
