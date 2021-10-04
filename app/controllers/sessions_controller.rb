class SessionsController < ApplicationController
    # before_action :require_login 

    def new 
    end

    def create 
        return (redirect_to controller: "sessions", action: "new") if params[:name].nil? || params[:name].blank?
        session[:name] = params[:name]
        redirect_to controller: "application", action: "index"
    end

    def destroy 
        session.delete :name 
        redirect_to controller:"application", action: "index"
    end
end
