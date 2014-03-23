class Me::MusicsController < MeController
  before_action :set_music, only: [:show, :edit, :update, :destroy]

  # GET /musics
  def index
    @musics = current_user.musics.recent.page(params[:page]).per(10)
  end

  # GET /musics/1
  def show
  end

  # GET /musics/new
  def new
    @music = Music.new
  end

  # GET /musics/1/edit
  def edit
  end

  def create
    @music = Music.new(music_params)
    @music.user_id = current_user.id
    if @music.save
      redirect_to me_user_music_path(current_user, @music), notice: 'Music was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @music.update(music_params)
      redirect_to me_user_music_path(current_user, @music), notice: 'Music was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music.destroy
    redirect_to me_user_musics_path(current_user), notice: 'Music was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:title, :s_type, :state, :source, :introduction)
    end
end
