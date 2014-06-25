class AddLatestestUpdatedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :latest_updated, :datetime
  end
end
