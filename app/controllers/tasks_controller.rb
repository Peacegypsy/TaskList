TASKS = [
  { name: "Do laundry", description: "Wash and dry clothing"},
  { name: "Grocery shop", description: "Get food to eat"},
  { name: "Homework", description: "CS Fun!"}
]


class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:name)
  end

  def show
    id = params[:id].to_i
    @task = Task.find_by(id: id)

    if @task.nil?
      render :notfound, status: :not_found
    end
  end

  def create
    @task = Task.new(id: params[:task][:id], name: params[:description][:edit])
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
    @task = Task.find(params[:id].to_i )
  end
end
