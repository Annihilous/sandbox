class BalatroHandsController < ApplicationController
  before_action :set_balatro_hand, only: %i[ show edit update destroy ]

  # GET /balatro_hands or /balatro_hands.json
  def index
    @balatro_hands = BalatroHand.all
  end

  # GET /balatro_hands/1 or /balatro_hands/1.json
  def show
  end

  # GET /balatro_hands/new
  def new
    @balatro_hand = BalatroHand.new
  end

  # GET /balatro_hands/1/edit
  def edit
  end

  # POST /balatro_hands or /balatro_hands.json
  def create
    @balatro_hand = BalatroHand.new(balatro_hand_params)

    respond_to do |format|
      if @balatro_hand.save
        format.html { redirect_to @balatro_hand, notice: "Balatro hand was successfully created." }
        format.json { render :show, status: :created, location: @balatro_hand }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @balatro_hand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balatro_hands/1 or /balatro_hands/1.json
  def update
    respond_to do |format|
      if @balatro_hand.update(balatro_hand_params)
        format.html { redirect_to @balatro_hand, notice: "Balatro hand was successfully updated." }
        format.json { render :show, status: :ok, location: @balatro_hand }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @balatro_hand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balatro_hands/1 or /balatro_hands/1.json
  def destroy
    @balatro_hand.destroy!

    respond_to do |format|
      format.html { redirect_to balatro_hands_path, status: :see_other, notice: "Balatro hand was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balatro_hand
      @balatro_hand = BalatroHand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balatro_hand_params
      params.require(:balatro_hand).permit(:name, :balatro_hand_type_id, :chip_total)
    end
end
