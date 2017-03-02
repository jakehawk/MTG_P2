class Deck < ApplicationRecord
  belongs_to :user
  has_many :spells, dependent: :destroy
end
