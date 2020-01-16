class CommentsController < ApplicationController
    before_action :find_quiet, only: [:show, :create, :edit, :update, :destroy]
    before_action :find_comment, only: [:edit, :update, :destroy]

    def show
    end

    def index
        @comments = Comment.all.order("created_at DESC")
        @quiets = Quiet.all.order("created_at DESC")
    end

    def create
        @comment = @quiet.comments.create(comment_params)
        @comment.user_id = current_user.id

        if @comment.save
            redirect_to quiet_path(@quiet)
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @comment.update(comment_params)
            flash[:success] = "Data updated"
            redirect_to quiet_path(@quiet)
        else
            render 'edit'
        end
    end
    
    def destroy
        @comment.destroy
        redirect_to quiet_path(@quiet)
    end
    

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

    def find_quiet
        @quiet = Quiet.find(params[:quiet_id])
    end

    def find_comment
        @comment = @quiet.comments.find(params[:id])
    end
end
