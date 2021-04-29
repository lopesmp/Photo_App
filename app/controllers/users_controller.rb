class UsersController < ApplicationController
      def new
        @user = User.new
      end

      def index
        @users = User.all        
      end

      def edit
        @user = User.find(params[:id])
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

      def update
        respond_to do |format|
          if current_user.update(user_params)
            format.html { redirect_to @user, notice: "Profile was successfully updated." }
            format.json { render :show, status: :ok, location: @user }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @users.errors, status: :unprocessable_entity }
          end
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :image)
      end
end
