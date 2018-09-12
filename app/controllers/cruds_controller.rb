class CrudsController < ApplicationController
  before_action :set_crud, only: [:show, :update, :destroy]

  # GET /cruds
  def index
    @cruds = Crud.all

    render json: @cruds
  end

  # GET /cruds/1
  def show
    render json: @crud
  end

  # POST /cruds
  def create
    @crud = Crud.new(crud_params)

    if @crud.save
      render json: @crud, status: :created, location: @crud
    else
      render json: @crud.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cruds/1
  def update
    if @crud.update(crud_params)
      render json: @crud
    else
      render json: @crud.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cruds/1
  def destroy
    @crud.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crud
      @crud = Crud.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crud_params
      params.require(:crud).permit(:field1, :field2)
    end
end
