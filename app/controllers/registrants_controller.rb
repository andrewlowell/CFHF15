class RegistrantsController < ApplicationController
  
  def new
    @registrant = Registrant.new
  end
 
  def create
    @registrant = Registrant.new(registrant_params)
    if @registrant.save
      flash[:success] = "Registration successful! We'll send a confirmation email shortly."
      redirect_to root_path
      RegistrantMailer.registration_email(@registrant).deliver_now
    else
      render 'new'
    end
  end

    private
  
      def registrant_params
        params.require(:registrant).permit(:full_name, :email_address)
      end

end
