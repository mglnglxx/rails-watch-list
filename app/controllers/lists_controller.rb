class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      @list = List.new(list_params)
      render :new
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
