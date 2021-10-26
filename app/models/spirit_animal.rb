class SpiritAnimal < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
