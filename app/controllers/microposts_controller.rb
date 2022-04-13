class MicropostsController < ApplicationController
  # is new getting called when 
  def new
    @micropst = Micropst.new
  end

  def create
    @micropst = Micropst.new(micropost_params)
    if @micropst.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    end
  end

  def micropost_params
    params.require(:micropst).permit(:content)
  end
end
