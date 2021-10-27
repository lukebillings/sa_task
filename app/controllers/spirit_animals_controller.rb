class SpiritAnimalsController < ApplicationController

# skip_before_action :verify_authenticity_token

#require login on homepage
 before_action :authenticate_user!

  def index
    @spirit_animals = SpiritAnimal.all
    @spirit_animal = SpiritAnimal.new
  end

  def create
    @spirit_animal = SpiritAnimal.new(spirit_animal_params)
    @spirit_animal.user = current_user
    if @spirit_animal.save
      redirect_to spirit_animals_path
    end
  end

  private

    def spirit_animal_params
      params.require(:spirit_animal).permit(:name)
    end

end
