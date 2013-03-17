class DropCms < ActiveRecord::Migration
  def up
    drop_table :cms_sites
    drop_table :cms_layouts
    drop_table :cms_pages
    drop_table :cms_snippets
    drop_table :cms_blocks
    drop_table :cms_files
    drop_table :cms_revisions
    drop_table :cms_categories
    drop_table :cms_categorizations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
