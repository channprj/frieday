class BulletinsController < ApplicationController
  before_action :set_bulletin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bulletins = Bulletin.all
    respond_with(@bulletins)
  end

  def show
    respond_with(@bulletin)
  end

  def new
    @bulletin = Bulletin.new
    respond_with(@bulletin)
  end

  def edit
  end

  def create
    @bulletin = Bulletin.new(bulletin_params)
    @bulletin.save
    respond_with(@bulletin)
  end

  def update
    @bulletin.update(bulletin_params)
    respond_with(@bulletin)
  end

  def destroy
    @bulletin.destroy
    respond_with(@bulletin)
  end

  private
    def set_bulletin
      @bulletin = Bulletin.find(params[:id])
    end

    def bulletin_params
      params.require(:bulletin).permit(:title, :description)
    end
end
