class CreateCobacobas < ActiveRecord::Migration[7.1]
  def change
    create_table :cobacobas do |t|
      t.string :judul
      t.text :deskripsi
      
      t.timestamps
    end
  end
end
