class CommentsController < ApplicationController
    def new
       
    end
    
    def index
        @product = Product.find(params[:id])
    end
    def show
         @product = Product.find(params[:id])
    end
#     def create
#         @produ = Article.find(params[:article_id])
#         @comment = @article.comments.create(comment_params)
#         redirect_to article_path(@article)
#     end

#   private
#     def comment_params
#       params.require(:comment).permit(:commenter, :body)
#     end
    def create
          @product = Product.find(params[:product_id])
          @comment = @product.comments.build(comment)
          @comment.user = current_user
        if @comment.save
            redirect_to @product, notice: "Comment was created."
        else
            render :new
        end
    end
    # def destroy
    #     @status_update = StatusUpdate.find(params[:id])
    #     if @status_update.present?
    #       @status_update.destroy
    #     end
    #     redirect_to root_url
    # end
    def destroy
        @product = Product.find(params[:product_id])
        @comments = Comment.all
        @comment = @comments.find(params[:id])
        if @comment.present?
          @comment.destroy
        end
        respond_to do |format|
          format.html { redirect_to @product, notice: 'Product was successfully destroyed.' }
          format.json { head :no_content }
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment
      params.require(:comment).permit(:comment_text)
    end
end