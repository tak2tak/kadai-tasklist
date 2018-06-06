class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  
  def index
    @tasks = Task.all.page(params[:page]).per(6)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task=current_user.tasks.build(task_params)
    
    if @task.save
      flash[:success] = 'タスクが作成されました'
      redirect_to @task
    else
      flash.now[:danger] = 'タスクが作成されませんでした'
      render :new
    end
  end

  def edit
  end

  def update
    
    if @task.update(task_params)
      flash[:success] = 'タスクは更新されました'
      redirect_to @task
    else
      flash.now[:danger] = 'タスクは更新されませんでした'
      render :edit
    end
  end

  def destroy
    @task.destroy
    
    flash[:success] = 'タスクは削除されました'
    redirect_to root_url
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