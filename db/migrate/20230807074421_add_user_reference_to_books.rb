class AddUserReferenceToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :user_id, :uuid
    add_foreign_key :books, :users, column: :user_id, type: :uuid
  end
end
