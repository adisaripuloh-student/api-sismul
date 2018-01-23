class UnsursController < ApplicationController
  before_action :set_unsur, only: [:show, :update, :destroy]

  # GET /unsurs
  def index
    @unsurs = Unsur.all

    render json: @unsurs
  end

  # GET /unsurs/1
  def show
    render json: @unsur
  end

  # POST /unsurs
  def create
    @unsur = Unsur.new(unsur_params)

    if @unsur.save
      render json: @unsur, status: :created, location: @unsur
    else
      render json: @unsur.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /unsurs/1
  def update
    if @unsur.update(unsur_params)
      render json: @unsur
    else
      render json: @unsur.errors, status: :unprocessable_entity
    end
  end

  # DELETE /unsurs/1
  def destroy
    @unsur.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unsur
      @unsur = Unsur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unsur_params
      params.require(:unsur).permit(:simbol, :nama_unsur, :masa_atom, :nomor_atom, :deskripsi, :golongan, :periode, :icon)
    end
end
