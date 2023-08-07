class AddLibraryReferenceToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :library_id, :uuid
    add_foreign_key :books, :libraries, column: :library_id, type: :uuid
  end
end
