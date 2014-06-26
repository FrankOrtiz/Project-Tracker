class CreateWatchings < ActiveRecord::Migration
  def change
    create_table :watchings do |t|
      t.references :user
      t.references :project

      t.timestamps
    end
  end
end
