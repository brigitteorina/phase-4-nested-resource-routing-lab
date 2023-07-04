class UsersController < ApplicationController

  def index
    user = User.find(params[:user_id])
    items = user.items
    render json: items
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
