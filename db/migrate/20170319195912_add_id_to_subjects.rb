class AddIdToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :subject_id, :string
  end
end
