class SpiritAnimalsController < ApplicationController

  def index
    @spirit_animals = SpiritAnimal.all
  end

  def new
    @spirit_animal = SpiritAnimal.new
  end

  def create
    @spirit_animal.user = SpiritAnimal.new(spirit_animal_params)
    @spirit_animal.user = current_user
    if @spirit_animal.save
      redirect_to index_path
    end
  end

end
