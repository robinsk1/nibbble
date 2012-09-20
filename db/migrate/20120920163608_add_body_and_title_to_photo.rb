class AddBodyAndTitleToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :title, :string
    add_column :photos, :body, :text
  end
end
