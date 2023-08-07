class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries, id: :uuid do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
