class SoundsController < ApplicationController

  def new
    @sound = Sound.new
  end

  def index
    @sounds = Sound.all
  end

  def show
  end

  def create
    @sound = Sound.new(sound_params)
    @sound.user_id = current_user.id
    if @sound.save
      redirect_to sound_path(@sound.id)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private
  def sound_params
    params.require(:sound).permit(:title, :artist, :introduction, :jenre, :rate)
  end

end
