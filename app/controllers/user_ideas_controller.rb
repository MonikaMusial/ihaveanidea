class UserIdeasController < ApplicationController

 def create
    @useridea = UserIdea.new(idea_params)

    respond_to do |format|
      if @useridea.save
        format.html { redirect_to @try, notice: 'Rating was added' }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end
