class ChangeBooksPrimaryKeyToUuid < ActiveRecord::Migration[5.0]
  def change
    # Remove the existing primary key column
    remove_column :books, :id

    # Add a new UUID primary key column with a default value
    enable_extension 'pgcrypto'
    add_column :books, :id, :uuid, default: 'gen_random_uuid()', null: false, primary_key: true
  end
end
