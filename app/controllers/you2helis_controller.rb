class You2helisController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  end
 
  def create
    @you2heli = current_user.you2helis.build(params[:you2heli])
    if @you2heli.save
      flash[:success] = "you2heli created!"
      redirect_to root_path
    else
      render 'welcome/index'
    end
  end

  def destroy
  end
  
  private

    def you2heli_params
      params.require(:you2heli).permit(:content)
    end
end