class BdaesController < ApplicationController
  before_action :set_bdae, only: [:show, :edit, :update, :destroy]

  # GET /bdaes
  # GET /bdaes.json
  def index
    @bdaes = Bdae.all
  end

  # GET /bdaes/1
  # GET /bdaes/1.json
  def show
  end

  # GET /bdaes/new
  def new
    @bdae = Bdae.new
  end

  # GET /bdaes/1/edit
  def edit
  end

  # POST /bdaes
  # POST /bdaes.json
  def create
    @bdae = Bdae.new(bdae_params)

    respond_to do |format|
      if @bdae.save
        format.html { redirect_to @bdae, notice: 'Bdae was successfully created.' }
        format.json { render :show, status: :created, location: @bdae }
      else
        format.html { render :new }
        format.json { render json: @bdae.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bdaes/1
  # PATCH/PUT /bdaes/1.json
  def update
    respond_to do |format|
      if @bdae.update(bdae_params)
        format.html { redirect_to @bdae, notice: 'Bdae was successfully updated.' }
        format.json { render :show, status: :ok, location: @bdae }
      else
        format.html { render :edit }
        format.json { render json: @bdae.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bdaes/1
  # DELETE /bdaes/1.json
  def destroy
    @bdae.destroy
    respond_to do |format|
      format.html { redirect_to bdaes_url, notice: 'Bdae was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bdae
      @bdae = Bdae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bdae_params
      params.require(:bdae).permit(:firstname, :lastname, :date)
    end
end
