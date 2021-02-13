class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: UserSerializer.new(@users)
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by_id(params[:id])
    render json: UserSerializer.new(@user)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: UserSerializer.new(@user), status: :created
    else

      render json: { errors: @user.errors.full_messages.to_sentence }, status: :unprocessable_entity
    end
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      render json: UserSerializer.new(@user)
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      render json: UserSerializer.new(@user)
    else
      render json: { errors: @users.errors.full_messages }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:firstname, :lastname, :location, :username, :email, :img_src, :password)
    end
