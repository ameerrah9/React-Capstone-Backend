class Api::V1::FavoritesController < ApplicationController


  def index
    if logged_in?
      @favorites = current_user.favorites

      render json: FavoriteSerializer.new(@favorites)
    else
      render json: {
        error: "You must be logged in to see favorites"
      }
    end
  end

  def current_user_favorites
    if logged_in?
        @favorites = current_user.favorites
        render json: FavoriteSerializer.new(@favorites).serialized_json
    
    else
        render json: {
            notice: "You don't have any favorites, yet."
        }
    end
end

  # GET /favorites/1
  def show
    @favorite = Favorite.find(params[:id])
    render json: @favorite
  end

  # POST /favorites
  def create
    # add conditional for unique teams

    current_user = User.find_by(id: params[:user_id])

    @favorite = current_user.favorites.build(favorite_params)

    if @favorite.save
      render json: FavoriteSerializer.new(@favorite), status: :created
    else
      error_resp = {
        error: @favorite.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /favorites/1
  def update
    if @favorite.update(favorite_params)
      render json: FavoriteSerializer.new(@favorite), status: :ok
    else
      error_resp = {
        error: @favorite.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity    end
  end

  
  # DELETE /favorites/1
  def destroy
    @favorite = Favorite.find(params[:id])

    if @favorite.destroy
      render json: { data: 'Favorite successfully removed' }, status: :ok
    else
      error_resp = {
        error: "Favorite not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

    # Only allow a trusted parameter "white list" through.
    def favorite_params
      params.require(:favorite).permit(:user_id, :team_id)
    end
end
