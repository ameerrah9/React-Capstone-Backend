class Api::V1::FavoritesController < ApplicationController

  # GET /favorites
  def index
    @favorites = Favorite.all

    render json: FavoriteSerializer.new(@favorites)
  end

  # GET /favorites/1
  def show
    render json: @favorite
  end

  # POST /favorites
  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      render json: FavoriteSerializer.new(@favorite)
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  def update
    if @favorite.update(favorite_params)
      render json: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  def destroy
    favorite = Favorite.find(params[:id])

    if favorite.destroy
      render json: { message: 'favorite deleted' }
    else
      render json: { errors: favorite.errors.full_messages }
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def favorite_params
      params.require(:favorite).permit(:user_id)
    end
end
