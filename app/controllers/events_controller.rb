class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    # @events = Event.all
    @events = Event.where(festival_id: [nil, 5, 3])
    @accomodations = Accomodation.all
    @discussions = Discussion.all
    @flights = Flight.all
    #@teams = Team.all
    @teams = Team.where(festival_id: [nil, 5, 3])
    @instructions = Instruction.all
    @tasks = Task.all

    respond_to do |format|
	format.html
	format.json
	format.xlsx
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    time = Time.new
    @event = Event.new
    @event.start = time.strftime("%Y-%m-%d %H:00")
    @event.end = time.strftime("%Y-%m-%d %H:00")
    @event.festival_id = 5
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :start, :end, :type_id, :team_id,
        :festival_id, :location_id, :notes, :color, :heads, :staff, :label,
        sheets_attributes: [:id, :_destroy, :note],
	event_teams_attributes: [:id, :event_id, :team_id, :_destroy],
	instructions_attributes: [:id, :_destroy, :name, :event_id, :task_id])
    end
end
