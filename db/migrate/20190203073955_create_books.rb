class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.references :author, index: true
      t.string :title, required: true
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
