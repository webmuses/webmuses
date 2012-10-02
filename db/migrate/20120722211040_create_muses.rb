class CreateMuses < ActiveRecord::Migration
  def change
    create_table :muses do |t|
      t.string :name
      t.text :description
      t.boolean :visible
      t.string :photo_url

      t.timestamps
    end
  end
end
