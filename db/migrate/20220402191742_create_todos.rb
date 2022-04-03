class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :text
      t.boolean :isComplited
      t.integer :project_id

      t.timestamps
    end
    add_index :todos, :id
  end
end
