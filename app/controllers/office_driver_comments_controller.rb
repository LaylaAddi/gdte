class OfficeDriverCommentsController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :destroy] 
  #before_action :authorize_user, only: [:edit, :update, :destroy] 
  # load_and_authorize_resource param_method: :my_sanitizer
  # load_and_authorize_resource :through => :current_user

  def create
    @driver = Driver.find(params[:driver_id])
    @office_driver_comment = @driver.office_driver_comments.create(params[:office_driver_comment].permit(:body))
    @office_driver_comment.user_id = current_user.id if current_user
    
    
    if @office_driver_comment.save
      redirect_to driver_path(@driver), notice: "Your comment has been saved."
    else
      redirect_to @driver
      flash[:warning] = "There was a problem saving your comment, Minimum length is 5 characters and the Max is 500"
  end
end
  
  def update
    @driver = Driver.find(params[:driver_id])
    @office_driver_comment = @driver.office_driver_comments.find(params[:id])
    
    if @office_driver_comment.update(params[:office_driver_comment].permit(:body))
      redirect_to driver_path(@driver), notice: "Your comment has been updated."
    else
      render 'edit'
    end
  end
  
  def edit
    @driver = Driver.find(params[:driver_id])
    @office_driver_comment = @driver.office_driver_comments.find(params[:id])
        if @office_driver_comment.user_id != current_user.id 
      flash[:error] = "Sorry #{@user.first_name} you are not the owner of this note."
      redirect_to driver_path(@driver)
    end
  end
  
  def destroy
    @driver = Driver.find(params[:driver_id])
    @office_driver_comment = @driver.office_driver_comments.find(params[:id])
    @office_driver_comment.destroy
    redirect_to driver_path(@driver), notice: "Your comment has been deleted."
  end
  
  
    private

  def set_user
    @user = current_user
  end
  
  def authorize_user
    if @office_driver_comment.user_id != current_user.id 
      flash[:error] = "Sorry #{@user.first_name} you are not the owner of this note."
      redirect_to driver_path(@driver)
    end
  end


end 