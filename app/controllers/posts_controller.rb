class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def create
      new_post = Post.new(title: params[:title],content1: params[:content1],content2: params[:content2],content3: params[:content3])
      if new_post.save
        redirect_to posts_path
      else
        redirect_to posts_path
        puts "에러 발생"
      end
  end
  
  def deco 
  end 

  def new
  end
  
  def destroy
      @post = Post.find_by(id: params[:id])
      @post.destroy
      redirect_to posts_path    
  end 
end
