class MicropostsController < ApplicationController
  # is new getting called when 
  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    end
  end

  def micropost_params
    params.require(:micropost).permit(:content)
  end

  def index
    @micros = Micropost.all
  end
end
