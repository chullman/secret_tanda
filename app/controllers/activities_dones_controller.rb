class ActivitiesDonesController < ApplicationController
  before_action :set_activities_done, only: [:show, :edit, :update, :destroy]

  # GET /activities_dones
  # GET /activities_dones.json
  def index
    @activities_dones = ActivitiesDone.all
  end

  # GET /activities_dones/1
  # GET /activities_dones/1.json
  def show
  end

  # GET /activities_dones/new
  def new
    @activities_done = ActivitiesDone.new
  end

  # GET /activities_dones/1/edit
  def edit
  end

  # POST /activities_dones
  # POST /activities_dones.json
  def create
    @activities_done = ActivitiesDone.new(activities_done_params)

    respond_to do |format|
      if @activities_done.save
        format.html { redirect_to @activities_done, notice: 'Activities done was successfully created.' }
        format.json { render :show, status: :created, location: @activities_done }
      else
        format.html { render :new }
        format.json { render json: @activities_done.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities_dones/1
  # PATCH/PUT /activities_dones/1.json
  def update
    respond_to do |format|
      if @activities_done.update(activities_done_params)
        format.html { redirect_to @activities_done, notice: 'Activities done was successfully updated.' }
        format.json { render :show, status: :ok, location: @activities_done }
      else
        format.html { render :edit }
        format.json { render json: @activities_done.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities_dones/1
  # DELETE /activities_dones/1.json
  def destroy
    @activities_done.destroy
    respond_to do |format|
      format.html { redirect_to activities_dones_url, notice: 'Activities done was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activities_done
      @activities_done = ActivitiesDone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activities_done_params
      params.require(:activities_done).permit(:user_id, :activities_id)
    end
end
