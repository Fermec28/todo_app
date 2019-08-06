class ChangeColumnTypeTaskDuration < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :duration, :decimal, :precision => 12, :scale => 2
  end
end
