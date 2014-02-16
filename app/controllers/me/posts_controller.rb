class Me::PostsController < MeController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :view, :add]

  # GET /posts
  # GET /posts.json
  def index
    @posts = current_user.posts.recent.page(params[:page]).per(10)
  end

  # view album
  def view
    @resources = @post.resources.released
    render :layout => 'home'
  end
  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  def add
    post_resource = PostResource.new(post_id: @post.id, resource_id: params[:resource_id])

    if post_resource.save
      redirect_to me_user_post_path(current_user, @post), notice: 'Post was successfully created.'
    else
      render :show
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |format|
      if @post.save
        format.html { redirect_to me_user_post_path(current_user, @post), notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html do
          redirect_to me_user_post_path(current_user, @post), notice: 'Post was successfully updated.'
        end
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to me_user_posts_path(current_user), notice: 'Post was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :state, :content)
    end

end
