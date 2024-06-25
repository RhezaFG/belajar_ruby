class AuthorEdit < ActiveRecord::Migration[7.1]
  def change
    rename_column :authors, :phone, :phone_number
    remove_column :authors, :number
    remove_column :authors, :of
    remove_column :authors, :birth
  end
end
