class ApplyController < ApplicationController


def new

redirect_to root_path

end

def prepare
  @house = House.find params[:id]
  @application = Application.find params[:application_id]

  @house.applications << @application

  redirect_to houses_path
end

def submit

end
end
