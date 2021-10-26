class SpiritAnimalsController < ApplicationController

# can test in postman
  # skip_before_action :verify_authenticity_token

  def index
    @spirit_animals = SpiritAnimal.all
  end

  def new
    @spirit_animal = SpiritAnimal.new
  end

  def create
    @spirit_animal = SpiritAnimal.new(spirit_animal_params)
    @spirit_animal.user = current_user
    if @spirit_animal.save
      redirect_to index_path
    end
  end

  private

    def spirit_animal_params
      params.require(:spirit_animal).permit(:name)
    end

end
