class BirdsController < ApplicationController

    def index
        birds = Bird.all

        render json: birds
    end

    def show
        bird = Bird.find_by(id: params[:id])
        
        render json: bird
    end

    def create
        bird = Bird.create(species: params[:species], tree_id: params[:tree_id])

        render json: bird
    end

    def update
        bird = Bird.find_by(id: params[:id])
        bird.update(species: params[:species], tree: params[:tree])

        render json: bird
    end

    def destroy
        bird = Bird.find_by(id: params[:id])
        bird.destroy

        render json: "#{bird.species} has gone extinct!"
    end

    # all done
    # yayyyyyyy
end
