class PrimalsController < ApplicationController
  before_action :set_primal, only: [:show, :edit, :update, :destroy]

  # GET /primals
  # GET /primals.json
  def index
    @primals = Primal.all
  end

  # GET /primals/1
  # GET /primals/1.json
  def show
  end

  # GET /primals/new
  def new
    @primal = Primal.new
  end

  # GET /primals/1/edit
  def edit
  end

  # POST /primals
  # POST /primals.json
  def create
    @primal = Primal.new(primal_params)

    respond_to do |format|
      if @primal.save
        format.html { redirect_to @primal, notice: 'Primal was successfully created.' }
        format.json { render :show, status: :created, location: @primal }
      else
        format.html { render :new }
        format.json { render json: @primal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primals/1
  # PATCH/PUT /primals/1.json
  def update
    respond_to do |format|
      if @primal.update(primal_params)
        format.html { redirect_to @primal, notice: 'Primal was successfully updated.' }
        format.json { render :show, status: :ok, location: @primal }
      else
        format.html { render :edit }
        format.json { render json: @primal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primals/1
  # DELETE /primals/1.json
  def destroy
    @primal.destroy
    respond_to do |format|
      format.html { redirect_to primals_url, notice: 'Primal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primal
      @primal = Primal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primal_params
      params.require(:primal).permit(:name)
    end
end
