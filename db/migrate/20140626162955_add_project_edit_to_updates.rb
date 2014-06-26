class AddProjectEditToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :project_edit, :boolean
  end
end
