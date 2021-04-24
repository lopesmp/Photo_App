class UsersController < ApplicationController
      def new
        @user = User.new
      end

      def edit
      end
    
      def create
        @user = User.create(user_params)
        if @user.valid?
          @user.save
          redirect_to @user
        else  
          redirect_to signup_path
        end
      end
    
      def show
        @user = User.find(params[:id])
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :image)
      end
end
