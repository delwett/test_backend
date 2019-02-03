class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name, required: true
      t.date :birthdate
      t.string :country

      t.timestamps
    end
  end
end
