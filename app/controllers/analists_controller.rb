class AnalistsController < ApplicationController
  before_action :set_analist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @analists = Analist.all
  end

  def show
  end

  def new
    @analist = current_user.analists.build
  end

  def edit
  end

  def create
    @analist = current_user.analists.build(analist_params)

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

  def destroy
    @analist.destroy
    respond_to do |format|
      format.html { redirect_to analists_url, notice: 'Analist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_analist
      @analist = Analist.find(params[:id])
    end

    def analist_params
      params.require(:analist).permit(:name, :user_id)
    end
end
