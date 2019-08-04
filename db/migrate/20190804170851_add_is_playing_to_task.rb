class AddIsPlayingToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :playing_status, :boolean, :default => false
  end
end
