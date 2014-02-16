class Visitor::PostsController < VisitorController
  before_action :set_post, only: [:show, :view]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.released.recent.page(params[:page]).per(10)
  end

  # view album
  def view
    @resources = @post.resources
    render :layout => 'home'
  end
  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.released.find(params[:id])
    end

end
