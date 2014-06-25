class AddEditorToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :editor, :string
  end
end
