class CommentsController < ApplicationController

    def create
        @quiet = Quiet.find(params[:quiet_id])
        @comment = @quiet.comments.create(comment_params)
        @commnet.user_id = current_user.id

        if @comment.save
            redirect_to quiet_path(@quiet)
        else
            render 'new'
        end
    end

    private

    def comment_params
        params.require.(:comment).permit(:content)
    end
end
