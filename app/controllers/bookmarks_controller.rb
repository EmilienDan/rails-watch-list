class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmarks.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end
end
