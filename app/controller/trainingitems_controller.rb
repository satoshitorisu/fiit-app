class TrainingitemsController < ApplicationController
  before_action :set_trainingitem, only: [:show, :edit, :update, :destroy]

  # GET /trainingitems
  # GET /trainingitems.json
  def index
    @trainingitems = Trainingitem.where(trainer_id: current_trainer.id)
  end

  # GET /trainingitems/1
  # GET /trainingitems/1.json
  def show
  end

  # GET /trainingitems/new
  def new
    @trainingitem = Trainingitem.new
  end

  # GET /trainingitems/1/edit
  def edit
  end

  # POST /trainingitems
  # POST /trainingitems.json
  def create
    @trainingitem = Trainingitem.new(trainingitem_params)
    @trainingitem.trainer_id = current_trainer.id

    respond_to do |format|
      if @trainingitem.save
        format.html { redirect_to @trainingitem, notice: 'Trainingitem was successfully created.' }
        format.json { render :show, status: :created, location: @trainingitem }
      else
        format.html { render :new }
        format.json { render json: @trainingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainingitems/1
  # PATCH/PUT /trainingitems/1.json
  def update
    respond_to do |format|
      if @trainingitem.update(trainingitem_params)
        format.html { redirect_to @trainingitem, notice: 'Trainingitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainingitem }
      else
        format.html { render :edit }
        format.json { render json: @trainingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainingitems/1
  # DELETE /trainingitems/1.json
  def destroy
    @trainingitem.destroy
    respond_to do |format|
      format.html { redirect_to trainingitems_url, notice: 'Trainingitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainingitem
      @trainingitem = Trainingitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainingitem_params
      params.require(:trainingitem).permit(:name, :description, :part, :trainer_id)
    end
end
