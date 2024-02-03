class PostsController < ApplicationController
  def create
    p = post_params
    user = User.find(p[:id])
    if p[:body] == ''
      flash[:alert] = 'Null comment is not permitted'
    elsif user.posts.create(body: p[:body], submitter: current_user.id)
      flash[:notice] = 'Post was successfully created.'
    else
      flash[:alert] = 'Something went wrong'
    end

    redirect_to user_path(user.id)
  end

  protected

  def post_params
    params.require(:post).permit(:body, :id)
  end
end
