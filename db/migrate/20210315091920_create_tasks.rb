class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :title
      t.string :image
      t.string :description
      t.timestamps
    end
  end
end
