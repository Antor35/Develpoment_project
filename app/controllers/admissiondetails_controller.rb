class AdmissiondetailsController < ApplicationController
  before_action :set_admissiondetail, only: [:show, :update, :destroy]

  # GET /admissiondetails
  def index
    @admissiondetails = Admissiondetail.all

    render json: @admissiondetails
  end

  # GET /admissiondetails/1
  def show
    render json: @admissiondetail
  end

  # POST /admissiondetails
  def create
    @admissiondetail = Admissiondetail.new(admissiondetail_params)

    if @admissiondetail.save
      render json: @admissiondetail, status: :created, location: @admissiondetail
    else
      render json: @admissiondetail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admissiondetails/1
  def update
    if @admissiondetail.update(admissiondetail_params)
      render json: @admissiondetail
    else
      render json: @admissiondetail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admissiondetails/1
  def destroy
    @admissiondetail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admissiondetail
      @admissiondetail = Admissiondetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admissiondetail_params
      params.require(:admissiondetail).permit(:cost, :person_id, :admission_id, :needed_document, :last_admission_date)
    end
end
