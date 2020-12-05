class WeekdaysController < ApplicationController
    
    def index
        @weekdays = Weekday.all 
    end 

    def show
        @weekday = Weekday.find(params[:id]) 
    end 
    
end
