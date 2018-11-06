class UserIdeasController < ApplicationController
 before_action :set_user_idea, only: [:show, :edit, :update, :destroy, :try]

    def new
      @user_idea = UserIdea.new
    end

    def create


    end

    def update
      @user_id = UserIdea.where(idea_id:params[:id],user_id:current_user).take

      respond_to do |format|
        if !params[:rating].nil? and !@user_id.nil?
          @user_id.rating = params[:rating]
          @user_id.save
          @idea = Idea.find(params[:id])
          @idea.average_rating=UserIdea.where(idea_id:params[:id]).average(:rating)
          @idea.save
          format.html { redirect_to user_idea_path(params[:id]), notice: 'Rating was added!' }
          format.json { render :show, status: :ok, location: @idea }
        else
          format.html { render :show }
          format.json { render json: @idea.errors, status: :unprocessable_entity }
        end
      end
    end

  def show
    #respond_to do |format|
     # format.html {redirect_to try_path(@idea)} 
    #end
  end

      private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_idea
      @user_idea = UserIdea.where(idea_id:params[:id],user_id:current_user).take
    end

end
