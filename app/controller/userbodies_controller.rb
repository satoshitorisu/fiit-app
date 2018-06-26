class UserbodiesController < ApplicationController
  before_action :set_userbody, only: [:edit, :update, :destroy]

  # GET /userbodies
  # GET /userbodies.json
  def index
    @userbodies = Userbody.all
  end

  # GET /userbodies/1
  # GET /userbodies/1.json
  def show
    @weights = Weight.where(user_id: params[:id]).order('date DESC').page(params[:weight]).per(4)
    @weight_latest = Weight.where(user_id: params[:id]).order('date DESC').first
    # @shops = Shop.page(params[:page])
    # @goalweight = User.where(user_id: params[:id]).order('date DESC').page(params[:weight]).per(10)
    

    #体重遷移グラフ情報
    @max = @weight_latest.weightactual + 12
    @min = @weight_latest.weightactual - 12

    @chart_data = []
      @weights.limit(7).each do |weight|
          val1 = weight.date.strftime("%m/%d")
          val2 = weight.weightactual
          @chart_data << [val1, val2]
      end


    #トレーニング実績
    #今週

    #月次
    

    #全期間

    @weight =Weight.new
  end

  # GET /userbodies/new
  def new
    @userbody = Userbody.new
  end

  # GET /userbodies/1/edit
  def edit
  end

  # POST /userbodies
  # POST /userbodies.json
  def create
    @userbody = Userbody.new(userbody_params)

    respond_to do |format|
      if @userbody.save
        format.html { redirect_to @userbody, notice: 'Userbody was successfully created.' }
        format.json { render :show, status: :created, location: @userbody }
      else
        format.html { render :new }
        format.json { render json: @userbody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userbodies/1
  # PATCH/PUT /userbodies/1.json
  def update
    respond_to do |format|
      if @userbody.update(userbody_params)
        format.html { redirect_to @userbody, notice: 'Userbody was successfully updated.' }
        format.json { render :show, status: :ok, location: @userbody }
      else
        format.html { render :edit }
        format.json { render json: @userbody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userbodies/1
  # DELETE /userbodies/1.json
  def destroy
    @userbody.destroy
    respond_to do |format|
      format.html { redirect_to userbodies_url, notice: 'Userbody was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userbody
      @userbody = Userbody.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userbody_params
      params.require(:userbody).permit(:date, :weight, :bodyfat)
    end
end
