class DispatchersController < ApplicationController
  before_action :set_the_dispatcher_by_id, only: [:show]

 
  def dashboard
    @dispatcher = Dispatcher.find(current_dispatcher.id)
  end
  
  def index
    @dispatchers = Dispatcher.all
  end

  def new
  end

  def show
  end
  
    private
    
    def set_the_dispatcher_by_id
      @dispatcher = Dispatcher.find(params[:id])
    end
  
end  
 