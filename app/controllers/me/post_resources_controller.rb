class Me::PostResourcesController < MeController

  def create
    @post = Post.find post_params[:post_id]
    @post_resource = PostResource.new(post_params)
    if @post_resource.save
      redirect_to me_user_post_path(current_user, @post), notice: 'Picture was successfully added.'
    else
      redirect_to me_user_post_path(current_user, @post), notice: 'Picture was not added.'
    end
  end

  def destroy
    @post_resource = PostResource.find params[:id]
    @post = @post_resource.post

    @post_resource.destroy
    redirect_to me_user_post_path(current_user, @post), notice: 'Picture was successfully removed.'
  end

  private
    def post_params
      params.require(:post_resource).permit(:post_id, :resource_id)
    end
end
