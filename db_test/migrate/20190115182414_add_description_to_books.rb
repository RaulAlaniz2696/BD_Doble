class AddDescriptionToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :description_books, :book_id, :integer 
  end
end
