# == Schema Information
#
# Table name: wishlists
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Wishlist < ApplicationRecord
  has_many :site_managers, dependent: :destroy
  has_many :users, through: :site_managers

  has_many :wishlist_items, dependent: :destroy
  has_many :items, through: :wishlist_items

  validates :name, presence: true,
                   uniqueness: true

  before_save :create_slug
  before_update :create_slug

  private
  
  def create_slug
    self.slug = name.parameterize
  end
end
