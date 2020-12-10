class MessagesController < ApplicationController


 def new
   @user = User.find_by_username(params[:user])
@message = current_user.messages.new
end

def mailboxer_email(object)
 #return the model's email here
end

end
