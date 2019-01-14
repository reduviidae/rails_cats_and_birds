class CatsController < ApplicationController
  before_action :find_cat, only: [:show, :edit, :update, :destroy]
  def index
    @cats = Cat.all
    @birds = Bird.all
  end

  def show

  end

  def new
    @cat = Cat.new
  end

  def create
    cat = Cat.create(cat_params)
    redirect_to cat_path(cat)
  end

  def edit
  end

  def update
    find_cat.update(cat_params)
    redirect_to cat_path(@cat)
  end

  def destroy
    @cat.destroy
    redirect_to "/cats"
  end

  private

  def find_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :age, :breed)
  end
end
