class ChangeTypeOfComment < ActiveRecord::Migration[6.1]
  def change
    change_column :owners, :comment, :text
  end
end
