class TreesController < ApplicationController


    def index
        trees = Tree.all

        render json: trees
    end

    def show
        tree = Tree.find_by(id: params[:id])
        
        render json: tree
    end

    def create
        tree = Tree.create(species: params[:species])

        render json: tree
    end

    def update
        tree = Tree.find_by(id: params[:id])
        tree.update(species: params[:species])

        render json: tree
    end

    def destroy
        tree = Tree.find_by(id: params[:id])
        tree.destroy

        render json: "#{tree.species} has gone extinct!"
    end


end
