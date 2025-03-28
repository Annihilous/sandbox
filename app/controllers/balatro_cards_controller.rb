class BalatroCardsController < ApplicationController
  before_action :set_balatro_card, only: %i[ show edit update destroy ]

  # GET /balatro_cards or /balatro_cards.json
  def index
    @balatro_cards = BalatroCard.all
  end

  # GET /balatro_cards/1 or /balatro_cards/1.json
  def show
  end

  # GET /balatro_cards/new
  def new
    @balatro_card = BalatroCard.new
  end

  # GET /balatro_cards/1/edit
  def edit
  end

  # POST /balatro_cards or /balatro_cards.json
  def create
    @balatro_card = BalatroCard.new(balatro_card_params)

    respond_to do |format|
      if @balatro_card.save
        format.html { redirect_to @balatro_card, notice: "Balatro card was successfully created." }
        format.json { render :show, status: :created, location: @balatro_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @balatro_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balatro_cards/1 or /balatro_cards/1.json
  def update
    respond_to do |format|
      if @balatro_card.update(balatro_card_params)
        format.html { redirect_to @balatro_card, notice: "Balatro card was successfully updated." }
        format.json { render :show, status: :ok, location: @balatro_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @balatro_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balatro_cards/1 or /balatro_cards/1.json
  def destroy
    @balatro_card.destroy!

    respond_to do |format|
      format.html { redirect_to balatro_cards_path, status: :see_other, notice: "Balatro card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balatro_card
      @balatro_card = BalatroCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balatro_card_params
      params.require(:balatro_card).permit(:name, :suit, :chips, :mult, :xmult, :trigger_count, :is_debuffed)
    end
end
