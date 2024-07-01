class BookEditKedua < ActiveRecord::Migration[7.1]
  def change
    remove_column :books, :Author
  end
end
