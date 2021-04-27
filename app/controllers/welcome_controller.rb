class WelcomeController < ApplicationController
    def index
      @users = User.all
    end

    def show
    end

    def about
    end
    
  end