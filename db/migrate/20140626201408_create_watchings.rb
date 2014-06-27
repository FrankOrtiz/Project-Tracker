class CreateWatchings < ActiveRecord::Migration
  def change
    create_table :watchings do |t|
      t.references :project, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
