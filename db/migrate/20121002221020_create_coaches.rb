class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.text :description
      t.string :name
      t.string :photo
      t.boolean :visible
      t.string :twitter
      t.string :url

      t.timestamps
    end
  end
end
