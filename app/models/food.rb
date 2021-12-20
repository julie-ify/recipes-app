class Food < ApplicationRecord
  belongs_to :user
  has_many :recipes, dependent: :destroy
  has_many :inventory_foods, dependent: :destroy

  validates :name, :measurement_unit, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
