class ClinicalSystemsController < ApplicationController
  before_action :set_clinical_system, only: %i[ show edit update destroy ]

  # GET /clinical_systems or /clinical_systems.json
  def index
    @clinical_systems = ClinicalSystem.all
  end

  # GET /clinical_systems/1 or /clinical_systems/1.json
  def show
  end

  # GET /clinical_systems/new
  def new
    @clinical_system = ClinicalSystem.new
  end

  # GET /clinical_systems/1/edit
  def edit
  end

  # POST /clinical_systems or /clinical_systems.json
  def create
    @clinical_system = ClinicalSystem.new(clinical_system_params)

    respond_to do |format|
      if @clinical_system.save
        format.html { redirect_to clinical_system_url(@clinical_system), notice: "Clinical system was successfully created." }
        format.json { render :show, status: :created, location: @clinical_system }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clinical_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinical_systems/1 or /clinical_systems/1.json
  def update
    respond_to do |format|
      if @clinical_system.update(clinical_system_params)
        format.html { redirect_to clinical_system_url(@clinical_system), notice: "Clinical system was successfully updated." }
        format.json { render :show, status: :ok, location: @clinical_system }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clinical_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinical_systems/1 or /clinical_systems/1.json
  def destroy
    @clinical_system.destroy

    respond_to do |format|
      format.html { redirect_to clinical_systems_url, notice: "Clinical system was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinical_system
      @clinical_system = ClinicalSystem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clinical_system_params
      params.require(:clinical_system).permit(:system_name, :description, :supplier_id, :clinical_safety_officer_id, :go_live_date, :review_date, :technical_owner_id, :organisation_id)
    end
end
