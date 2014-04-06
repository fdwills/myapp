class Visitor::MusicsController < VisitorController

  def index
    @musics = Music.released.recent.page(params[:page]).per(10)
  end

  def show
    @music = Music.released.find(params[:id])
  end

  def top
    render :layout => 'top'
  end
end
