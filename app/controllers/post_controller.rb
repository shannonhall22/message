class PostController < ApplicationController


  def show
    @post = Post.find(params[:id])

    @search = params[:search]

    if @search == ""
      @post = Post.all
    else
      @post = Post.where(@search)
    end
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
    @search = params[:search]

    if @search == ""
      @post = Post.all
    else
      @post = Post.where(@post.contents)
    end
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
