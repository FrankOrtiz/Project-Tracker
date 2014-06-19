class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text :who
      t.text :description
      t.references :project, index: true

      t.timestamps
    end
  end
end
