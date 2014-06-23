class AddCreatedByToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :created_by, :string
  end
end
