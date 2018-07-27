class UsersController < ApplicationController
  def index
    @users=User.all.paginate(:page => params[:page],per_page: 2)
    @user=User.sorted
  end

  def new
    puts ' HERE IN NEWW' * 10
    @user = User.new
  end

  def create
    @user=User.new(user_params)
    if@user.save
       redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    
    puts ' HELLO'
    puts params.inspect
    puts ' HELLO'
  end

  def edit
  end

  private

    def user_params
      params.require(:user).permit(:name) #user is model name but always comes in small if two word separte with underscore
    end
end
