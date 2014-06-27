class WatchingsController < ApplicationController
  before_action :set_watching, only: [:show, :edit, :update, :destroy]

  # GET /watchings
  # GET /watchings.json
  def index
    @watchings = Watching.all
  end

  # GET /watchings/1
  # GET /watchings/1.json
  def show
  end

  # GET /watchings/new
  def new
    @watching = Watching.new
  end

  # GET /watchings/1/edit
  def edit
  end

  # POST /watchings
  # POST /watchings.json
  def create

    unless check_watching

    @watching = Watching.new(watching_params)
    end

    respond_to do |format|
      if @watching.save
        format.html { redirect_to root_path, notice: 'Watching was successfully created.' }
        format.json { render :show, status: :created, location: @watching }
      else
        format.html { render :new }
        format.json { render json: @watching.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watchings/1
  # PATCH/PUT /watchings/1.json
  def update
    respond_to do |format|
      if @watching.update(watching_params)
        format.html { redirect_to @watching, notice: 'Watching was successfully updated.' }
        format.json { render :show, status: :ok, location: @watching }
      else
        format.html { render :edit }
        format.json { render json: @watching.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watchings/1
  # DELETE /watchings/1.json
  def destroy
    @watching.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Watching was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watching
      @watching = Watching.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watching_params
      params.require(:watching).permit(:project_id, :user_id)
    end

    def check_watching
      @project = Project.find(watching_params[:project_id])
        watchings = @project.watchings.map {|watching| watching.user_id}
        watchings.include?(current_user.id)
    end 
end
