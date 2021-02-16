class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :title
      t.string :subtitle
      t.string :description
      t.timestamps
    end
  end
end
