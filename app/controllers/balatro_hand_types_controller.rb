class BalatroHandTypesController < ApplicationController
  before_action :set_balatro_hand_type, only: %i[ show edit update destroy ]

  # GET /balatro_hand_types or /balatro_hand_types.json
  def index
    @balatro_hand_types = BalatroHandType.all
  end

  # GET /balatro_hand_types/1 or /balatro_hand_types/1.json
  def show
  end

  # GET /balatro_hand_types/new
  def new
    @balatro_hand_type = BalatroHandType.new
  end

  # GET /balatro_hand_types/1/edit
  def edit
  end

  # POST /balatro_hand_types or /balatro_hand_types.json
  def create
    @balatro_hand_type = BalatroHandType.new(balatro_hand_type_params)

    respond_to do |format|
      if @balatro_hand_type.save
        format.html { redirect_to @balatro_hand_type, notice: "Balatro hand type was successfully created." }
        format.json { render :show, status: :created, location: @balatro_hand_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @balatro_hand_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balatro_hand_types/1 or /balatro_hand_types/1.json
  def update
    respond_to do |format|
      if @balatro_hand_type.update(balatro_hand_type_params)
        format.html { redirect_to @balatro_hand_type, notice: "Balatro hand type was successfully updated." }
        format.json { render :show, status: :ok, location: @balatro_hand_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @balatro_hand_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balatro_hand_types/1 or /balatro_hand_types/1.json
  def destroy
    @balatro_hand_type.destroy!

    respond_to do |format|
      format.html { redirect_to balatro_hand_types_path, status: :see_other, notice: "Balatro hand type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balatro_hand_type
      @balatro_hand_type = BalatroHandType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balatro_hand_type_params
      params.require(:balatro_hand_type).permit(:name, :mult_base, :mult_increase, :chip_base, :chip_increase)
    end
end
