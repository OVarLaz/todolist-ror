class NotesController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.create(note_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:id])
    @note.destroy
    redirect_to task_path(@task), status: :see_other
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end
end
