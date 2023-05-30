class BlogsController < ApplicationController
  def index
    @blog = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blogs_params)
    if @blog.save
      flash[:alert] = "Blog created Successfully"
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def blogs_params
    params.require(:blog).permit(:title, :sub_title, :content, :user_id)
  end
end
