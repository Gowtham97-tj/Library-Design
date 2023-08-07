class UpdateDefaultForUserIdInBooks < ActiveRecord::Migration[5.0]
  def change
    change_column_default :books, :user_id, from: false, to: nil
  end
end
