class Admin::InforamtionsController < AdminController
  before_action :set_inforamtion, only: [:show, :edit, :update, :destroy]

  # GET /inforamtions
  # GET /inforamtions.json
  def index
    @inforamtions = Inforamtion.all
  end

  # GET /inforamtions/1
  # GET /inforamtions/1.json
  def show
  end

  # GET /inforamtions/new
  def new
    @inforamtion = Inforamtion.new
  end

  # GET /inforamtions/1/edit
  def edit
  end

  # POST /inforamtions
  # POST /inforamtions.json
  def create
    @inforamtion = Inforamtion.new(inforamtion_params)

    respond_to do |format|
      if @inforamtion.save
        format.html { redirect_to @inforamtion, notice: 'Inforamtion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inforamtion }
      else
        format.html { render action: 'new' }
        format.json { render json: @inforamtion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inforamtions/1
  # PATCH/PUT /inforamtions/1.json
  def update
    respond_to do |format|
      if @inforamtion.update(inforamtion_params)
        format.html { redirect_to @inforamtion, notice: 'Inforamtion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inforamtion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inforamtions/1
  # DELETE /inforamtions/1.json
  def destroy
    @inforamtion.destroy
    respond_to do |format|
      format.html { redirect_to inforamtions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inforamtion
      @inforamtion = Inforamtion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inforamtion_params
      params[:inforamtion]
    end
end
