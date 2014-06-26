class AddAuthorToProject < ActiveRecord::Migration
  def change
    add_column :projects, :Author, :string
  end
end
