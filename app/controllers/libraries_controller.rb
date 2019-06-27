class LibrariesController < ApplicationController
  def index
    # byebug
    if params[:sorted]
      @libraries = Library.all.sort_by { |l| l.name }.reverse
    else
      @libraries = Library.all
    end
    render :index
  end
end