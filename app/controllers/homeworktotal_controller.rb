class HomeworktotalController < ApplicationController
  before_action :set_biology, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  # GET /biologies or /biologies.json
  def index
    @biologies = Biology.all
  end

  # GET /biologies/1 or /biologies/1.json
  def show
  end

  # GET /biologies/new
  def new
    @biology = current_user.biologies.build
  end

  # GET /biologies/1/edit
  def edit
  end

  # POST /biologies or /biologies.json
  def create
    @biology = current_user.biologies.build(biology_params)

    respond_to do |format|
      if @biology.save
        format.html { redirect_to @biology, notice: "Biology was successfully created." }
        format.json { render :show, status: :created, location: @biology }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @biology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biologies/1 or /biologies/1.json
  def update
    respond_to do |format|
      if @biology.update(biology_params)
        format.html { redirect_to @biology, notice: "Biology was successfully updated." }
        format.json { render :show, status: :ok, location: @biology }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @biology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biologies/1 or /biologies/1.json
  def destroy
    @biology.destroy
    respond_to do |format|
      format.html { redirect_to biologies_url, notice: "Biology was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user 
    @biology = current_user.biologies.find_by(id: params[:id])
    redirect_to biologies_path, notice: "Not Authorized To Edit This Task" if @biology.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biology
      @biology = Biology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def biology_params
      params.require(:biology).permit(:teacher, :description, :due_date, :user_id)
    end

    def total
   	end
end
