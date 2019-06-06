class AnalistsController < ApplicationController
  before_action :set_analist, only: [:show, :edit, :update, :destroy]

  # GET /analists
  # GET /analists.json
  def index
    @analists = Analist.all
  end

  # GET /analists/1
  # GET /analists/1.json
  def show
  end

  # GET /analists/new
  def new
    @analist = Analist.new
  end

  # GET /analists/1/edit
  def edit
  end

  # POST /analists
  # POST /analists.json
  def create
    @analist = Analist.new(analist_params)

    respond_to do |format|
      if @analist.save
        format.html { redirect_to @analist, notice: 'Analist was successfully created.' }
        format.json { render :show, status: :created, location: @analist }
      else
        format.html { render :new }
        format.json { render json: @analist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analists/1
  # PATCH/PUT /analists/1.json
  def update
    respond_to do |format|
      if @analist.update(analist_params)
        format.html { redirect_to @analist, notice: 'Analist was successfully updated.' }
        format.json { render :show, status: :ok, location: @analist }
      else
        format.html { render :edit }
        format.json { render json: @analist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analists/1
  # DELETE /analists/1.json
  def destroy
    @analist.destroy
    respond_to do |format|
      format.html { redirect_to analists_url, notice: 'Analist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analist
      @analist = Analist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analist_params
      params.require(:analist).permit(:name)
    end
end
