class TransportController < ApplicationController

def show
  @transport = Transport.find params[:id]
end

end
