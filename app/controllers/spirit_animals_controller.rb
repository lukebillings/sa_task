class SpiritAnimalsController < ApplicationController
  # require login on homepage
  before_action :authenticate_user!

  def index
    @spirit_animal = SpiritAnimal.new
    @my_spirit_animals = current_user.spirit_animals
    @admins_spirit_animals = SpiritAnimal.joins(:user).where(user: { admin: true })
    @regular_users_spirit_animals = SpiritAnimal.joins(:user).where(user: { admin: false })
  end

  def create
    @spirit_animal = SpiritAnimal.new(spirit_animal_params)
    @spirit_animal.user = current_user
    @spirit_animal.save
    redirect_to root_path
  end

  private

  def spirit_animal_params
    params.require(:spirit_animal).permit(:name)
  end
end
