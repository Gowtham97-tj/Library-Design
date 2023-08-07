class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books, id: :uuid do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
