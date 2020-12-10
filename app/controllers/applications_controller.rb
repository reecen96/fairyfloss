class ApplicationsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]


  def new
    @application = Application.new #for the form_with
  end

  def create
  application =  Application.new application_params

#set user ID attribute
  application.user_id = @current_user.id

  #uploading image to database
  if params[:application][:image].present?
  response = Cloudinary::Uploader.upload params[:application][:image]
  p response
  application.image = response["public_id"]
  end

  application.save

  redirect_to application_path(application.id) #go to path

  end

  def index
  end

  def show
    @application = Application.find params[:id]

  end

  def edit
    @application = Application.find params[:id]
    redirect_to login_path unless @application.user.id == @current_user.id


  end

  def update
      application = Application.find params[:id]

      if application.user.id == @current_user.id
        application.update application_params #strong params
        redirect_to application_path(application.id)

        return
      end
      redirect_to login_path
  end

  def destroy
    application = Application.find params[:id]
    if application.user.id == @current_user.id
      Application.destroy params[:id]
      redirect_to applications_path
      return
    end
    redirect_to login_path

  end

  private
  def application_params
    params.require(:application).permit(:title, :offer, :message, :image)
  end
end
