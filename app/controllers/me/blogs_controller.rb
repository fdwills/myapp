class Me::BlogsController < MeController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  def index
    @blogs = current_user.blogs.recent.page(params[:page]).per(10)
  end

  # GET /blogs/1
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      redirect_to me_user_blog_path(current_user, @blog), notice: 'Blog was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @blog.update(blog_params)
      redirect_to me_user_blog_path(current_user, @blog), notice: 'Blog was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    redirect_to me_user_blogs_path(current_user), notice: 'Blog was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :state, :content)
    end
end
