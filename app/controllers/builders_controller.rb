class BuildersController < ApplicationController
  before_action :authenticate_builder!, only: [:edit, :show, :update, :destroy]

  def index
    @builder = Builder.all
  end

  def show
    @builder = Builder.find(params[:id])
  end

end
