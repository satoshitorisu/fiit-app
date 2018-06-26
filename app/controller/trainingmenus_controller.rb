class TrainingmenusController < ApplicationController
  before_action :set_trainingmenu, only: [:edit, :update, :destroy]

  # GET /trainingmenus
  # GET /trainingmenus.json
  def index
    @trainingmenus = Trainingmenu.all
  end

  # GET /trainingmenus/1
  # GET /trainingmenus/1.json
  def show

    @result = []
    @week = %w[日 月 火 水 木 金 土]

    @trainingmenus = Trainingmenu.where(user_id: params[:id])
    unless Trainingitem.where(trainer_id: current_trainer.id)#.unshift("")
      @trainingitems = Trainingitem.where(trainer_id: current_trainer.id).pluck(:id)
    end

    # 14.times {|num|
    #   @temp = []

    #   trainingdate = Date.today - num + 4
    #   @temp << trainingdate

    #    if @trainingmenus.find_by(user_id: params[:id]).present?

    #       # @trainingtemp = @trainingmenus.find_by(date: trainingdate).trainingactuals

    #       @trainingitems.each do |items|

    #         if @trainingtemp.find_by(trainingitem_id: items ).present?
    #           @temp << [@trainingtemp.find_by(trainingitem_id: items).weight,
    #                     @trainingtemp.find_by(trainingitem_id: items).time,
    #                     @trainingtemp.find_by(trainingitem_id: items).sets]
    #         else
    #           @temp << ["","",""]
    #         end
    #       end
    #    end

    #  @result << @temp
    # }

    # @trainingitems.unshift("")
    # @result.unshift(@trainingitems)
    # debugger

  end

  # GET /trainingmenus/new
  def new
    @trainingmenu = Trainingmenu.new
    itemtimes = Trainingitem.where(trainer_id:  current_trainer.id).count
    @itemarray = Trainingitem.where(trainer_id:  current_trainer.id).pluck(:id, :name)

    # itemtimes.times {|num| @trainingmenu.trainingactuals.build(trainingitem_id: @itemarray[num, 0], trainingname: @itemarray[num, 1])}
    itemtimes.times {
      |num| @trainingmenu.trainingactuals.build(trainingitem_id:  @itemarray[num][0], trainingname: @itemarray[num][1])
      # debugger
    }
      # [{trainingitem_id: @itemarray[num, 0]}, {trainingname: @itemarray[num, 1]}]}



    # debugger
    @trainingitems = Trainingitem.where(trainer_id:  current_trainer.id)

  end

  # GET /trainingmenus/1/edit
  def edit
  end

  # POST /trainingmenus
  # POST /trainingmenus.json
  def create
    @trainingmenu = Trainingmenu.new(trainingmenu_params)
    # @trainingmenu.user_id = params[:user_id]
    @trainingmenu.user_id = 1
    # debugger
    respond_to do |format|
      if @trainingmenu.save
        format.html { redirect_to @trainingmenu, notice: 'Trainingmenu was successfully created.' }
        format.json { render :show, status: :created, location: @trainingmenu }
      else
        itemtimes = Trainingitem.where(trainer_id:  current_trainer.id).count
        itemtimes.times { @trainingmenu.trainingactuals.build }
        @trainingitems = Trainingitem.where(trainer_id:  current_trainer.id)
        format.html { render :new , notice: 'Trainingmenu was failed to create.'}
        format.json { render json: @trainingmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainingmenus/1
  # PATCH/PUT /trainingmenus/1.json
  def update
    respond_to do |format|
      if @trainingmenu.update(trainingmenu_params)
        format.html { redirect_to @trainingmenu, notice: 'Trainingmenu was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainingmenu }
      else
        format.html { render :edit }
        format.json { render json: @trainingmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainingmenus/1
  # DELETE /trainingmenus/1.json
  def destroy
    @trainingmenu.destroy
    respond_to do |format|
      format.html { redirect_to trainingmenus_url, notice: 'Trainingmenu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainingmenu
      @trainingmenu = Trainingmenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainingmenu_params
      params.require(:trainingmenu).permit(:date, :user_id, :trainingitem_id, :trainingactuals_attributes => [:id, :time, :status, :trainingmenu_id, :trainingitem_id, :weight, :sets, :trainingname,   :_destroy])
    end
end
