class AddUserReferenceToSpiritAnimals < ActiveRecord::Migration[6.1]
    def change
    add_reference :spirit_animals, :user, index: true, foreign_key: true
  end
end
