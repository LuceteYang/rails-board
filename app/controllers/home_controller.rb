class HomeController < ApplicationController
  def index
    @postlist = Post.all
  end
  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    if post.save
      redirect_to "/home/index"
    else
      render :text => post.errors.messages[:title].first
    end
  end
  def reply_write
    reply = Reply.new
    reply.content = params[:content]
    reply.post_id = params[:id_of_post]
    if reply.save
      redirect_to "/home/index"
    else
      render :text => post.errors.messages[:title].first
    end
  end
end
