class AnimalsController < ApplicationController

    before_action :find_animal, only: [:show, :edit, :destroy, :update]

    def index
        @animal = Animal.all
    end

    def show
        
    end

    def new
        @animal = Animal.new
    end

    def create
        @animal = Animal.create(animal_params)
        redirect_to @animal 
    end

    def edit
        
    end

    def update 
        @animal.update(animal_params)
        redirect_to @animal
    end

    def destroy 
        @animal.destroy
    end

    private 

    def animal_params
        params.require(:animal).permit(:name, :age, :species, :endagered)
    end

    def find_animal
        @animal = Animal.find(params[:id])
    end

end
