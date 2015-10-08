class CommentsController < ApplicationController
  respond_to :js

  def index
    @comments = Comment.hash_tree
  end

  def new
    if current_user
      @user_id = current_user.id
      @comment = Comment.new(parent_id: params[:parent_id])
      render :comment_new
    else
      render :comment_log_in_required
    end
  end

  def hide
    render :comment_hide
  end

  def show
    @comments = Comment.flatten_nested_hash(Comment.hash_tree)
    render :comment_show
  end

  def create

    if params[:comment][:parent_id].to_i > 0
      parent = Comment.find_by_id(params[:comment][:parent_id])
      @comment = parent.children.build(comment_params)
    else
      @comment = Comment.new(comment_params)
    end

    if @comment.save
      @last_comment = Comment.all.where(author: params["comment"]["author"], body: params["comment"]["body"]).last
      render :comment_last
    else
      render 'new'
    end
  end


  private

    def comment_params
      params.require(:comment).permit(:title, :body, :author, :user_id)
    end

end
