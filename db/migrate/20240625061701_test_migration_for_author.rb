class TestMigrationForAuthor < ActiveRecord::Migration[7.1]
  def change
    rename_column :authors, :date, :date_of_birth
  end
end
