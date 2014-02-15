class Visitor::InforamtionsController < VisitorController
  before_action :set_inforamtion, only: [:show]

  # GET /inforamtions
  # GET /inforamtions.json
  def index
    @informations = Inforamtion.recent
  end

  # GET /inforamtions/1
  # GET /inforamtions/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inforamtion
      @information = Inforamtion.find(params[:id])
    end
end
