class CreateEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :enrollments do |t|
      t.integer :user_id
      t.string :course_id
      t.string :integer

      t.timestamps
    end
  end
end
