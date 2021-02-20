class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(
      params.require(:post).permit(:post_title, :start_at, :end_at, :is_all_day, :post_memo)
      )
      # binding.pry
    if @post.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to("/posts/index")
    else
      render ("posts/new")
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post_title, :start_at, :end_at, :is_all_day, :post_memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to ("/posts/index")
    else
      flash[:notice] = スケジュールを更新できませんでした
      render ("posts/edit")
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to("/posts/index")
  end
  
end
