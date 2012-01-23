class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :location
      t.integer :page

      t.timestamps
    end
  end
end
