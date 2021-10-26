class CreateSpiritAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :spirit_animals do |t|
      t.string :name

      t.timestamps
    end
  end
end
