class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  #
  # GET /users
  def index
    @users = User.all

    render json: UserSerializer.new(@users, include: [:favorites, :'favorites.team', :'favorites.team.name']).serialized_json
  end

  # GET /users/1
  def show
    #render json: @user
    # json_string = MovieSerializer.new(movie).serialized_json
    user_json = UserSerializer.new(@user).serialized_json
    render json: user_json
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :created
    else
      resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
    def destroy
    @user = User.find(params[:id])

    if @user.destroy
      render json: UserSerializer.new(@user)
    else
      render json: { errors: @users.errors.full_messages }
    end
  end

  private  

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :location, :username, :email, :img_src, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end
  end
