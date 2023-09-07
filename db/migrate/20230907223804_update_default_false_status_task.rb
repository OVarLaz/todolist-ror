class UpdateDefaultFalseStatusTask < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :status, from: nil, to: false
  end
end
