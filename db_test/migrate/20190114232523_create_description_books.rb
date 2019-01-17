class CreateDescriptionBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :description_books do |t|
      t.text :comments

      t.timestamps
    end
  end
end
