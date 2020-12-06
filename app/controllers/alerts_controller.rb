class AlertsController < ApplicationController
    
    def index
        @alerts = Alert.all 
    end 
    
    def show
        @alert = Alert.find(params[:id])   
    end 

    def new 
        @alert = Alert.new 
    end 

    def create
        @alert = Alert.new(alert_params) 
        if alert.save
            redirect_to alert_path(@alert)
        else 
            render :new 
        end 
    end 

    def edit
        @alert = Alert.find(params[:id])        
    end
    

    def update
        @alert= Alert.find(params[:id])
        if @alert.update(alert_params)
            redirect_to alert_path(@alert)
        else
            render :edit
        end
    end 

    private 

    def alert_params
        params.require(:alert).permit(:alert_type) 
    end 
end
