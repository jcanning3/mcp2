class TeamMusiciansController < ApplicationController
  before_action :set_team_musician, only: [:show, :edit, :update, :destroy]

  # GET /team_musicians
  # GET /team_musicians.json
  def index
    @team_musicians = TeamMusician.all
  end

  # GET /team_musicians/1
  # GET /team_musicians/1.json
  def show
  end

  # GET /team_musicians/new
  def new
    @team_musician = TeamMusician.new
  end

  # GET /team_musicians/1/edit
  def edit
  end

  # POST /team_musicians
  # POST /team_musicians.json
  def create
    @team_musician = TeamMusician.new(team_musician_params)

    respond_to do |format|
      if @team_musician.save
        format.html { redirect_to @team_musician, notice: 'Team musician was successfully created.' }
        format.json { render :show, status: :created, location: @team_musician }
      else
        format.html { render :new }
        format.json { render json: @team_musician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_musicians/1
  # PATCH/PUT /team_musicians/1.json
  def update
    respond_to do |format|
      if @team_musician.update(team_musician_params)
        format.html { redirect_to @team_musician, notice: 'Team musician was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_musician }
      else
        format.html { render :edit }
        format.json { render json: @team_musician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_musicians/1
  # DELETE /team_musicians/1.json
  def destroy
    @team_musician.destroy
    respond_to do |format|
      format.html { redirect_to team_musicians_url, notice: 'Team musician was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_musician
      @team_musician = TeamMusician.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_musician_params
      params.require(:team_musician).permit(:team_id, :musician_id)
    end
end
