class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.boolean :status
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
