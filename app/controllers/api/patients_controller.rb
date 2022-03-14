class Api::PatientsController < ApplicationController
  before_action :set_api_patient, only: %i[ show update destroy ]

  # GET /api/patients
  # GET /api/patients.json
  def index
    @api_patients = User.all
  end

  # GET /api/patients/1
  # GET /api/patients/1.json
  def show
  end

  # POST /api/patients
  # POST /api/patients.json
  def create
    @api_patient = User.new(api_patient_params)

    if @api_patient.save
      render :show, status: :created, location: @api_patient
    else
      render json: @api_patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/patients/1
  # PATCH/PUT /api/patients/1.json
  def update
    if @api_patient.update(api_patient_params)
      render :show, status: :ok, location: @api_patient
    else
      render json: @api_patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/patients/1
  # DELETE /api/patients/1.json
  def destroy
    @api_patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_patient
      @api_patient = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_patient_params
      params.fetch(:user, {
        :firstname,
        :middlename,
        :lastname,
        :email,
        :date_of_birth,
        :country,
        :contact_number
      })
    end
end
