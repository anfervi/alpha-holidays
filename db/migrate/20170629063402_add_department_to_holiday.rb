class AddDepartmentToHoliday < ActiveRecord::Migration[5.1]
  def change
    add_column :holidays, :department, :string
  end
end
