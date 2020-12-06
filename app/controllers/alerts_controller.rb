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

    def destroy
        @alert = Alert.find(params[:id])  
        @alert.destroy 
        redirect_to user_path(@user)
    end
    

    private 

    def alert_params
        params.require(:alert).permit(:alert_type) 
    end 
end
