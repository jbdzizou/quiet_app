class CommentsController < ApplicationController
    before_action :find_quiet, only: [:create, :edit, :update, :destroy]
    before_action :find_comment, only: [:update, :destroy]

    def create
        @comment = @quiet.comments.create(comment_params)
        @comment.user_id = current_user.id

        if @comment.save
            redirect_to quiet_path(@quiet)
        else
            render 'edit'
        end
    end

    def edit
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
