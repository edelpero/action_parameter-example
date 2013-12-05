class VacationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vacation, only: [:show, :edit, :update, :destroy]

  # GET /vacations
  # GET /vacations.json
  def index
    @vacations = Vacation.all
  end

  # GET /vacations/1
  # GET /vacations/1.json
  def show
  end

  # GET /vacations/new
  def new
    @vacation = Vacation.new
  end

  # GET /vacations/1/edit
  def edit
  end

  # POST /vacations
  # POST /vacations.json
  def create
    @vacation = Vacation.new(vacation_params)

    respond_to do |format|
      if @vacation.save
        format.html { redirect_to @vacation, notice: 'Vacation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vacation }
      else
        format.html { render action: 'new' }
        format.json { render json: @vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacations/1
  # PATCH/PUT /vacations/1.json
  def update
    respond_to do |format|
      if @vacation.update(vacation_params)
        format.html { redirect_to @vacation, notice: 'Vacation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacations/1
  # DELETE /vacations/1.json
  def destroy
    @vacation.destroy
    respond_to do |format|
      format.html { redirect_to vacations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacation
      @vacation = Vacation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacation_params
      params.require(:vacation).permit(:destination, :price, :hidden)
    end
end
