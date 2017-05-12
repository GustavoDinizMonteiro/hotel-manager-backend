class ApartamentsController < ApplicationController
  before_action :set_apartament, only: [:show, :update, :destroy]

  # GET /apartaments
  def index
    @apartaments = Apartament.all

    render json: @apartaments
  end

  # GET /apartaments/1
  def show
    render json: @apartament
  end

  # POST /apartaments
  def create
    @apartament = Apartament.new(apartament_params)

    if @apartament.save
      render json: @apartament, status: :created, location: @apartament
    else
      render json: @apartament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apartaments/1
  def update
    if @apartament.update(apartament_params)
      render json: @apartament
    else
      render json: @apartament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apartaments/1
  def destroy
    @apartament.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartament
      @apartament = Apartament.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def apartament_params
      params.require(:apartament).permit(:number, :balance, :checkin, :checkout)
    end
end
