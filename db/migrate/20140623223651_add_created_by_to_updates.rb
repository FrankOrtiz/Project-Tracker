class AddCreatedByToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :created_by, :string
  end
end
