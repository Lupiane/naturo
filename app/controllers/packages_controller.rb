class PackagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @packages = Package.all
    #remember to add filter to show only "active" packages
  end

  def new
  end

  def create
  end

  def show
    @package = Package.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
