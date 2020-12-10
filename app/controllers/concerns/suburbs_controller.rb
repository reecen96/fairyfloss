class SuburbsController < ApplicationController

def show
  @suburb = Suburb.find params[:id]

end

end
