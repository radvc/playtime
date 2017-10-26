class AddColumnSlugToWishlists < ActiveRecord::Migration[5.1]
  def change
    add_column :wishlists, :slug, :string
    add_index :wishlists, :slug, unique: true
  end
end
