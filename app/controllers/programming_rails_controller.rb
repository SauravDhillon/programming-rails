class ProgrammingRailsController < ApplicationController
  before_action :set_programming_rail, only: %i[ show edit update destroy ]

  # GET /programming_rails or /programming_rails.json
  def index
    @programming_rails = ProgrammingRail.all
  end

  # GET /programming_rails/1 or /programming_rails/1.json
  def show
  end

  # GET /programming_rails/new
  def new
    @programming_rail = ProgrammingRail.new
  end

  # GET /programming_rails/1/edit
  def edit
  end

  # POST /programming_rails or /programming_rails.json
  def create
    @programming_rail = ProgrammingRail.new(programming_rail_params)

    respond_to do |format|
      if @programming_rail.save
        format.html { redirect_to @programming_rail, notice: "Programming rail was successfully created." }
        format.json { render :show, status: :created, location: @programming_rail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @programming_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programming_rails/1 or /programming_rails/1.json
  def update
    respond_to do |format|
      if @programming_rail.update(programming_rail_params)
        format.html { redirect_to @programming_rail, notice: "Programming rail was successfully updated." }
        format.json { render :show, status: :ok, location: @programming_rail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @programming_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programming_rails/1 or /programming_rails/1.json
  def destroy
    @programming_rail.destroy!

    respond_to do |format|
      format.html { redirect_to programming_rails_path, status: :see_other, notice: "Programming rail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programming_rail
      @programming_rail = ProgrammingRail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programming_rail_params
      params.require(:programming_rail).permit(:title, :description, :link)
    end
end
