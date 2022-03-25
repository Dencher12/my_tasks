class CreateTask < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.integer :project_id
      t.text :text
      t.boolean :is_completed, default: :false
      t.timestamps
    end
  end
end
