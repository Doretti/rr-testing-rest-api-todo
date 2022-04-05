class AddTodosInProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :todos, :todos
  end
end
