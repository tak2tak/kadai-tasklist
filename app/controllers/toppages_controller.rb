class ToppagesController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  
  def index
    if logged_in?
      @user = current_user
      @task = current_user.tasks.build
      @tasks = current_user.tasks.order('created_at DESC').page(params[:page])
    end
  end
  
  def create
    @task=current_user.tasks.build(task_params)
    
    if @task.save
      flash[:success] = 'タスクが作成されました'
      redirect_to root_url
    else
      flash.now[:danger] = 'タスクが作成されませんでした'
      render :new
    end
  end
  
  def show
  end
  
  def destroy
    @task.destroy
    
    flash[:success] = 'タスクは削除されました'
    redirect_to toppages
  end
end

private

  def set_task
    @task = Task.find(params[:id])
    @user = session[:user_id]
  end

  def task_params
    params.require(:task).permit(:content, :status)
  end

  def current_user
    @task = current.user.task.find_by(id: params[:id])
  end