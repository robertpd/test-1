class MicropostsController < ApplicationController
  # is new getting called when 
  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    end
  end

  def micropost_params
    params.require(:micropost).permit(:content)
  end

  def indexMicro
    @micros = Micropost.all
  end
end
