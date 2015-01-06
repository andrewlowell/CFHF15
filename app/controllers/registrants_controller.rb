class RegistrantsController < ApplicationController
  
  def new
    @registrant = Registrant.new
  end
 
  def create
    @registrant = Registrant.new(registrant_params)
    if @registrant.save
      flash[:success] = "Registration successful! We'll send you an email when individual classes open up for registration."
      redirect_to root_path
    else
      render 'new'
    end
  end

    private
  
      def registrant_params
        params.require(:registrant).permit(:full_name, :email_address)
      end

end
