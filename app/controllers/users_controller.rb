class UsersController < ApplicationController
  def index
    @users = User.all
    authorize! :read, @users
  end

  def show
    @user = User.find(params[:id])
    # authorize! :crud, @user.id
  end
end
