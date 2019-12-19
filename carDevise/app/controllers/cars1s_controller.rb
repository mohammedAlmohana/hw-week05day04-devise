class Cars1sController < ApplicationController
  before_action :set_cars1, only: [:show, :edit, :update, :destroy]

  # GET /cars1s
  # GET /cars1s.json
  def index
    @cars1s = Cars1.all
  end

  # GET /cars1s/1
  # GET /cars1s/1.json
  def show
  end

  # GET /cars1s/new
  def new
    @cars1 = current_user.cars1.new
    
  end

  # GET /cars1s/1/edit
  def edit
    @car1 = Car1.find(params[:id])
  end

  # POST /cars1s
  # POST /cars1s.json
  def create
    @cars1 = current_user.cars1.new(car_params)
  

    respond_to do |format|
      if @cars1.save
        format.html { redirect_to @cars1, notice: 'Cars1 was successfully created.' }
        format.json { render :show, status: :created, location: @cars1 }
      else
        format.html { render :new }
        format.json { render json: @cars1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars1s/1
  # PATCH/PUT /cars1s/1.json
  def update
    @car1 = current_user.cars1.find(params[:id])  
    respond_to do |format|
      if @cars1.update(cars1_params)
        format.html { redirect_to @cars1, notice: 'Cars1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cars1 }
      else
        format.html { render :edit }
        format.json { render json: @cars1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars1s/1
  # DELETE /cars1s/1.json
  def destroy
    @cars1.destroy
    @car1 = current_user.cars1.find(params[:id]) 
    car1.destroy
    respond_to do |format|
      format.html { redirect_to cars1s_url, notice: 'Cars1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cars1
      @cars1 = Cars1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cars1_params
      params.require(:cars1).permit(:name, :model, :year, :user_id)
    end
end
