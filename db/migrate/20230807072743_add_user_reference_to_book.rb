class AddUserReferenceToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :library_id, :uuid
    add_foreign_key :users, :libraries, column: :library_id, type: :uuid
  end
end
