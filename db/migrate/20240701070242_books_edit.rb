class BooksEdit < ActiveRecord::Migration[7.1]
  def change
    remove_column :books, :author
  end
end
