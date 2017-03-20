class AddIdToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :id, :string
  end
end
