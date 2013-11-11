class You2HelisController < ApplicationController
  before_action :set_you2_heli, only: [:show, :edit, :update, :destroy]

  # GET /you2_helis
  # GET /you2_helis.json
  def index
    @you2_helis = You2Heli.all
  end

  # GET /you2_helis/1
  # GET /you2_helis/1.json
  def show
  end

  # GET /you2_helis/new
  def new
    @you2_heli = You2Heli.new
  end

  # GET /you2_helis/1/edit
  def edit
  end

  # POST /you2_helis
  # POST /you2_helis.json
  def create
    @you2_heli = You2Heli.new(you2_heli_params)

    respond_to do |format|
      if @you2_heli.save
        format.html { redirect_to @you2_heli, notice: 'You2 heli was successfully created.' }
        format.json { render action: 'show', status: :created, location: @you2_heli }
      else
        format.html { render action: 'new' }
        format.json { render json: @you2_heli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /you2_helis/1
  # PATCH/PUT /you2_helis/1.json
  def update
    respond_to do |format|
      if @you2_heli.update(you2_heli_params)
        format.html { redirect_to @you2_heli, notice: 'You2 heli was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @you2_heli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /you2_helis/1
  # DELETE /you2_helis/1.json
  def destroy
    @you2_heli.destroy
    respond_to do |format|
      format.html { redirect_to you2_helis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_you2_heli
      @you2_heli = You2Heli.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def you2_heli_params
      params.require(:you2_heli).permit(:content, :user_id)
    end
end
