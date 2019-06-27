class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :library_id

      t.timestamps
    end
  end
end
