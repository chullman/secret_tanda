class ActivityDonesController < ApplicationController
  before_action :set_activity_done, only: [:show, :edit, :update, :destroy]

  # GET /activity_dones
  # GET /activity_dones.json
  def index
    @activity_dones = ActivityDone.all
  end

  # GET /activity_dones/1
  # GET /activity_dones/1.json
  def show
  end

  # GET /activity_dones/new
  def new
    @activity_done = ActivityDone.new
  end

  # GET /activity_dones/1/edit
  def edit
  end

  def create_random_activity


    if user_signed_in?

      @random_activity = Activity.order("RANDOM()").first

      @new_activity_done = ActivityDone.create(user_id: current_user.id, activity_id: @random_activity.id)
      
    end

    redirect_to home_index_path

  end

  # POST /activity_dones
  # POST /activity_dones.json
  def create
    @activity_done = ActivityDone.new(activity_done_params)

    respond_to do |format|
      if @activity_done.save
        format.html { redirect_to @activity_done, notice: 'Activity done was successfully created.' }
        format.json { render :show, status: :created, location: @activity_done }
      else
        format.html { render :new }
        format.json { render json: @activity_done.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_dones/1
  # PATCH/PUT /activity_dones/1.json
  def update
    respond_to do |format|
      if @activity_done.update(activity_done_params)
        format.html { redirect_to @activity_done, notice: 'Activity done was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_done }
      else
        format.html { render :edit }
        format.json { render json: @activity_done.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_dones/1
  # DELETE /activity_dones/1.json
  def destroy
    @activity_done.destroy
    respond_to do |format|
      format.html { redirect_to activity_dones_url, notice: 'Activity done was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_done
      @activity_done = ActivityDone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_done_params
      params.require(:activity_done).permit(:user_id, :activity_id)
    end
end
