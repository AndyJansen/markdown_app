class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.new(note_params)
    respond_to do |format|
      if params[:preview_button] || !@note.save
        format.html { render :new }
      else
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
      end
    end
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      redirect_to @note
    else 
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to notes_path
  end

  def tagged
    if params[:tag].present?
      @notes = Note.tagged_with(params[:tag])
    else
      @notes = Note.all
    end
  end

  private
  def note_params
    params.require(:note).permit(:title, :content, :tag_list)
  end
 
end
