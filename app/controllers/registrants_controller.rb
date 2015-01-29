class RegistrantsController < ApplicationController
  
  def new
    @registrant = Registrant.new
    @classes_left = 20 - Registrant.where(time_slot_1: 2).count
  end

  def edit
    @registrant = Registrant.find_by edit_code: params[:edit_code]
  end
 
  def update
    @registrant = Registrant.find(params[:id])
    if @registrant.update_attributes(registrant_params)
      flash[:success] = "Editing successful! We'll send a confirmation email shortly."
      redirect_to root_path      
    else
      render 'edit'
    end
  end
 
  def create
    @registrant = Registrant.new(registrant_params)
    @registrant.edit_code = ('a'..'z').to_a.shuffle[0..7].join
    if @registrant.save
      flash[:success] = "Registration successful! We'll send a confirmation email shortly."
      redirect_to root_path
      RegistrantMailer.registration_email(@registrant).deliver_now
      RegistrantMailer.registration_notification(@registrant).deliver_now
    else
      render 'new'
    end
  end

    private
  
      def registrant_params
        params.require(:registrant).permit(:full_name, :email_address, :time_slot_1, :time_slot_2, :time_slot_3, :time_slot_4, :time_slot_5, :edit_code)
      end

end
