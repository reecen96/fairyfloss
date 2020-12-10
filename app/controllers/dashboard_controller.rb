class DashboardController < ApplicationController
before_action :check_if_logged_in

  def new
    @user= User.new #make a blank user object to give to 'form_width'
  end

  def mailboxer_email(object)
  return nil
end

def show
  @houses = House.where("user_id = ?", session[:user_id])

  @applications = Application.where("user_id = ?", session[:user_id])

end

def message
@sender = User.find(session[:user_id])
@receiver = User.find(3)
conversation = @sender.mailbox.inbox.first
@sender.send_message(@receiver, params[:body], params[:subject])

end

def edit
  application = Application.find params[:id]
application.update_attributes(status: params[:status], feedback: params[:feedback], house_num: params[:house_num])
redirect_to dashboard_path

end
end
