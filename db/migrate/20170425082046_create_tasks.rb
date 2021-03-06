class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :status
      t.datetime :deadline
      t.belongs_to :project, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
