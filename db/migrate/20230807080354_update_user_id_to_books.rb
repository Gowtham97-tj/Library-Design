class UpdateUserIdToBooks < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :user_id, :uuid, null: true
  end
end
