class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :comment
      t.timestamps
    end
  end
end
