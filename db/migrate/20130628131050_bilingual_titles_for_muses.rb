class BilingualTitlesForMuses < ActiveRecord::Migration
  def up
    rename_column :muses, :title, :title_pl
    add_column :muses, :title_en, :string
  end

  def down
    rename_column :muses, :title_pl, :title
    remove_column :muses, :title_en
  end
end
