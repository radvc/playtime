class AddColumnSlugToWishlists < ActiveRecord::Migration[5.1]
  def change
    add_column :wishlists, :slug, :string
  end
end
