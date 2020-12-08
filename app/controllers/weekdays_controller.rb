class WeekdaysController < ApplicationController
    
    def index
        @weekdays = Weekday.all 
    end 

    def show
        @weekday = Weekday.find(params[:id]) 
    end 

    def new 
        @weekday = Weekday.new 
       # @prior_locations = ["Ipsento", "Tony's", "Bank of America", "Planet Fitness", "Taconazo", "Brickyard Mall"]
        @days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    end 
    
    def create
        @weekday = Weekday.new(weekday_params) 
        if @weekday.save
            redirect_to weekdays_path(@weekdays)
        else 
            render :new 
        end 
    end 

    def edit
        @weekday = Weekday.find(params[:id])        
    end
    

    private
    def weekday_params
        params.require(:weekday).permit(:user_id, :location_id, :day, :weekday_ids) 
    end 

end
