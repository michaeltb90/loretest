class SentiencesController < ApplicationController
  before_action :set_sentience, only: [:show, :edit, :update, :destroy]

  # GET /sentiences
  # GET /sentiences.json
  def index
    @sentiences = Sentience.all
  end

  # GET /sentiences/1
  # GET /sentiences/1.json
  def show
  end

  # GET /sentiences/new
  def new
    @sentience = Sentience.new
  end

  # GET /sentiences/1/edit
  def edit
  end

  # POST /sentiences
  # POST /sentiences.json
  def create
    @sentience = Sentience.new(sentience_params)

    respond_to do |format|
      if @sentience.save
        format.html { redirect_to @sentience, notice: 'Sentience was successfully created.' }
        format.json { render :show, status: :created, location: @sentience }
      else
        format.html { render :new }
        format.json { render json: @sentience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentiences/1
  # PATCH/PUT /sentiences/1.json
  def update
    respond_to do |format|
      if @sentience.update(sentience_params)
        format.html { redirect_to @sentience, notice: 'Sentience was successfully updated.' }
        format.json { render :show, status: :ok, location: @sentience }
      else
        format.html { render :edit }
        format.json { render json: @sentience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentiences/1
  # DELETE /sentiences/1.json
  def destroy
    @sentience.destroy
    respond_to do |format|
      format.html { redirect_to sentiences_url, notice: 'Sentience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentience
      @sentience = Sentience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sentience_params
      params.require(:sentience).permit(:name)
    end
end
