class UsersController < ApplicationController

    def index
        @users = User.all  
    end 

    def show 
        @user = User.find(params[:id])
    end 

    def new 
        @user = User.new 
    end 

    def create
        @user = Post.new(user_params) 
        if post.save
            redirect_to user_path(@user)
        else 
            render :new 
        end 
    end 

    
    private 

    def user_params
        params.require(:post).permit(:name, :age, :status) 
    end 
end
