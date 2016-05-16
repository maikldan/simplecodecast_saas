class OpsystemsController < ApplicationController
    before_action :set_opsystem, only: [:show, :edit, :update, :destroy]
    def new
        # Form where user can fill out their own profile.
        #@user = User.find( params[:user_id] )
        #@profile = Profile.new
        @opsystem = Opsystem.new
        if current_user == @admin_user
            @product = Product.new
        else
             redirect_to root_url
        end
    end
    def show
        @opsystems = Opsystem.all
        @opsystem = Opsystem.find(params[:id])
    end
    def index
        @opsystems = Opsystem.all
    end
    
    def create
       @opsystem = Opsystem.new(opsystem_params)
       if @opsystem.save
          flash[:success] = "Os addded"
          redirect_to opsystems_path
      else
          render action: :new
       end
    end
    
    private
    def opsystem_params
        params.require(:opsystem).permit(:os,:product_id)
    end
end