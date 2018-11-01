class UserIdeasController < ApplicationController

    def new
      @useridea = UserIdea.new
    end

    def create
      @useridea = UserIdea.last
      @useridea.rating = params[:rating]
      #@useridea = UserIdea.new
      #@idea = Idea.find(1)
      #@idea.users << User.find(1)
    end

    def try

     # flash[:notice]="You are trying new challenge, good luck!" + params.to_str
    #  @idea = Idea.find(params[:id])
    #@user = User.find_by id: session[:user_id]
    #@user = User.find(current_user.id)
     # @idea.users << User.find(1)
    #  flash[:notice]="You are trying new challenge, good luck!" + params[:rating]
    
    end

end
