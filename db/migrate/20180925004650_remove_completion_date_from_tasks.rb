class RemoveCompletionDateFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :completion_date, :string
  end
end
