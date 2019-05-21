# frozen_string_literal: true

class CatsController < ApplicationController
  before_action :set_cat, only: %i[show edit update destroy]

  def index
    @cats = Cat.all
  end

  def show; end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.save
    redirect_to @cat
  end

  def edit; end

  def update
    @cat.update(cat_params)
    redirect_to @cat
  end

  def destroy
    @cat.destroy
    redirect_to cats_path
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :color, :found_at, :photo_url)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end
end
