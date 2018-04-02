class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :image
      t.string :dimensions
      t.string :room
      t.integer :budget
      t.string :deadline
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
