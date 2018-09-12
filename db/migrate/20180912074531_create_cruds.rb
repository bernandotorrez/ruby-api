class CreateCruds < ActiveRecord::Migration[5.2]
  def change
    create_table :cruds do |t|
      t.string :field1
      t.string :field2

      t.timestamps
    end
  end
end
