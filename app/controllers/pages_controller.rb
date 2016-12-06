class PagesController < ApplicationController
    def home
        @basic_plan = Plan.find(1)
        @pro_plan = Plan.find(2)
        @user = current_user
    end
    
    def about
    end
end
