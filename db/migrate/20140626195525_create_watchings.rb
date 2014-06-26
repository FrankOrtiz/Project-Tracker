class CreateWatchings < ActiveRecord::Migration
  def change
    create_table :watchings do |t|
      t.integer :watcher_id
      t.integer :watched_id

      t.timestamps
    end
  end
end
