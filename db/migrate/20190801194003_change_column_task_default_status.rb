class ChangeColumnTaskDefaultStatus < ActiveRecord::Migration[5.2]
  def change

    change_column :tasks, :status, :boolean, :default => false
    rename_column :tasks, :status, :done
  end
end
