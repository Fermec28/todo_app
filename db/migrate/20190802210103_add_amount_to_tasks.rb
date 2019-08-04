class AddAmountToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :duration, :decimal, precision: 5, scale: 2, :default=>0.0, :null => false
  end
end
