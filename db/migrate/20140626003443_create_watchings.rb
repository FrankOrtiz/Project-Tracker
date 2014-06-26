class CreateWatchings < ActiveRecord::Migration
  def change
    create_table :watchings do |t|
      t.refrences :user
      t.refrences :project

      t.timestamps
    end
  end
end
