class Deck < ApplicationRecord
  has_many :spells

  belongs_to :user, dependent: :destroy
end
