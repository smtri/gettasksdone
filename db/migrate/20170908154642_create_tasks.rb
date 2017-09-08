class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :name
      t.boolean :done
      t.integer :priority
      t.date :due
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
