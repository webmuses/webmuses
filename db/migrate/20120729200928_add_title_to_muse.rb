class AddTitleToMuse < ActiveRecord::Migration
  def change
    add_column :muses, :title, :string
  end
end
