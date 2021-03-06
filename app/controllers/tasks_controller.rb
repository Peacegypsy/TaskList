TASKS = [
  {id: 1, name: "Wash dishes", description: "Use soap and hot water"},
  {id: 2, name: "Do laundry", description: "Wash and dry clothes"},
  {id: 2, name: "Grocery shop", description: "Go to store and buy healthy food"}
]


class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find_by(id: id)

    if @task.nil?
      render :notfound, status: :not_found
    end
  end

  def complete
    @task = Task.find_by(id: params[:id].to_i)
    if @task.completed = true
      render :complete_task, status: :complete_task
      @complete_task = task.complete
      @task.save
      redirect_to complete_task_path
    end
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @task = Task.new
  end

  def edit
  @task = Task.find_by(id: params[:id].to_i)
  render :new
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    task.update(task_params)

    redirect_to task_path(task.id)
  end

  def destroy
    task = Task.find_by(id: params[:id].to_i)
    @deleted_task = task.destroy
    redirect_to root_path
  end
  private
def task_params
  return params.require(:task).permit(:name, :description)
end

end
