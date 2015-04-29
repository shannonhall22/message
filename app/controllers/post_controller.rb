class PostController < ApplicationController


  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.image_url = params[:image]
    @post.contents = params[:contents]
    @post.save

    redirect_to "/posts/#{@post.id}"
  end

  def index
    @post = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.new
    @post.title = params[:title]
    @post.image_url = params[:image]
    @post.contents = params[:contents]
    @post.save

    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/posts"
  end

end
