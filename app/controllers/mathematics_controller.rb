class MathematicsController < ApplicationController
  before_action :set_mathematic, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  # GET /mathematics or /mathematics.json
  def index
    @mathematics = Mathematic.all
  end

  # GET /mathematics/1 or /mathematics/1.json
  def show
  end

  # GET /mathematics/new
  def new
    @mathematic = current_user.mathematics.build
  end

  # GET /mathematics/1/edit
  def edit
  end

  # POST /mathematics or /mathematics.json
  def create
    @mathematic = current_user.mathematics.build(mathematic_params)

    respond_to do |format|
      if @mathematic.save
        format.html { redirect_to @mathematic, notice: "Mathematic was successfully created." }
        format.json { render :show, status: :created, location: @mathematic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mathematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mathematics/1 or /mathematics/1.json
  def update
    respond_to do |format|
      if @mathematic.update(mathematic_params)
        format.html { redirect_to @mathematic, notice: "Mathematic was successfully updated." }
        format.json { render :show, status: :ok, location: @mathematic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mathematic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mathematics/1 or /mathematics/1.json
  def destroy
    @mathematic.destroy
    respond_to do |format|
      format.html { redirect_to mathematics_url, notice: "Mathematic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @mathematic = current_user.mathematics.find_by(id: params[:id])
    redirect_to mathematics_path, notice: "Not Authorized To Edit This Task" if @mathematic.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mathematic
      @mathematic = Mathematic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mathematic_params
      params.require(:mathematic).permit(:teacher, :description, :due_date, :user_id)
    end
end
