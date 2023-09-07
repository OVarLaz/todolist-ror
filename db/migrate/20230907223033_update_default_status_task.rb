class UpdateDefaultStatusTask < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :status, default: false
  end
end
