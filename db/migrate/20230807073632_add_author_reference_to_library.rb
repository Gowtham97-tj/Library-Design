class AddAuthorReferenceToLibrary < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author_id, :uuid
    add_foreign_key :books, :authors, column: :author_id, type: :uuid
  end
end
