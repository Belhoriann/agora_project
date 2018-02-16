class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    
    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        respond_to do |format|
          format.html { redirect_to :back, notice: 'Tag was successfully destroyed.' }
          format.json { head :no_content }
        end
    end
end
