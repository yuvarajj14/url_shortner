class LinksController < ApplicationController
  def new
  end

  def create
    @link = Link.new(link_params)
    @link.shorted_url = SecureRandom.hex(4)
    if @link.save
      redirect_to link_path(@link)
    else
      render 'new'
    end
  end

  def show
    @link =  Link.find(params[:id])
  end

  def go
    @link = Link.find_by(shorted_url: params[:shorted_url])
    redirect_to @link.original_url, :status => 302
  end

  private
  def link_params
    params.require(:link).permit(:original_url)
  end
end
