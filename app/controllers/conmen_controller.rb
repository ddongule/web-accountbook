class ConmenController < ApplicationController
  before_action :set_conman, only: [:show, :edit, :update, :destroy]

  # GET /conmen
  # GET /conmen.json
  def index
    @conmen = Conman.all
  end

  # GET /conmen/1
  # GET /conmen/1.json
  def show
  end

  # GET /conmen/new
  def new
    @conman = Conman.new
  end

  # GET /conmen/1/edit
  def edit
  end

  # POST /conmen
  # POST /conmen.json
  def create
    @conman = Conman.new(conman_params)

    respond_to do |format|
      if @conman.save
        format.html { redirect_to @conman, notice: 'Conman was successfully created.' }
        format.json { render :show, status: :created, location: @conman }
      else
        format.html { render :new }
        format.json { render json: @conman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conmen/1
  # PATCH/PUT /conmen/1.json
  def update
    respond_to do |format|
      if @conman.update(conman_params)
        format.html { redirect_to @conman, notice: 'Conman was successfully updated.' }
        format.json { render :show, status: :ok, location: @conman }
      else
        format.html { render :edit }
        format.json { render json: @conman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conmen/1
  # DELETE /conmen/1.json
  def destroy
    @conman.destroy
    respond_to do |format|
      format.html { redirect_to conmen_url, notice: 'Conman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conman
      @conman = Conman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conman_params
      params.require(:conman).permit(:sido, :gusigun, :election, :names)
    end
end
