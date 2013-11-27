class HighlightsController < ApplicationController

  def index
    @highlights = Highlight.all
    @highlight = Highlight.new
  end

  def create
    @highlight = Highlight.new
    @highlight.title = params[:highlight][:title]
    @highlight.description = params[:highlight][:description]
    @highlight.save
    User.find(current_user.id).highlights << @highlight
    redirect_to highlights_path
  end

  def show
    @highlight = Highlight.find(params[:id].to_i)
  end
end