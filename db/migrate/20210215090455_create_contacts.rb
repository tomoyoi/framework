class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.integer :tel
      t.string :email, null: false
      t.string :message, null: true
      t.timestamps
    end
  end
end
