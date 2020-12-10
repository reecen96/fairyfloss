class HousesController < ApplicationController

before_action :check_if_logged_in, except: [:index, :show]


  def new
    @house = House.new #for the form_with
  end


def search

@houses = House.where("bed > ? AND bath > ? AND kitchen > ? AND leasem > ?", params[":bed"], params[":bath"], params[":kitchen"], params[":leasem"])

end

  def create
    #set user ID of mixtape from current user

    house = House.new house_params

    #set user ID attribute
      house.user_id = @current_user.id
      house.save

    redirect_to house_path(house.id)
  end





  def index
@houses = House.all

end




  def show
    # application =  Application.new application_params
    @house = House.find params[:id]

    @application = Application.new

  end

def apply
  application =  Application.new
  application.user_id = @current_user.id
  application.house_num = params[:id]
  application.save
    redirect_to application_path(application.id) #go to path
end



  def edit
    @house = House.find params[:id]
    redirect_to login_path unless @house.user.id == @current_user.id

  end




  def update
      house = House.find params[:id]

      if house.user.id == @current_user.id
        house.update house_params #strong params
        redirect_to house_path(house.id)
        return
          redirect_to login_path
      end

  end



  def destroy
    house = House.find params[:id]

    if house.user.id == @current_user.id
      House.destroy params[:id]
      redirect_to houses_path

      return
    end
    redirect_to login_path
  end





  private
  def house_params
    params.require(:house).permit(:title, :parking, :rent, :message,:descrip, :image_1, :image_2, :bed, :leasem, :offer, :image, :suburbs_id, :bath, :kitchen, :leasem, :parking, :address, :title, :suburb_id, :id)
  end
end
