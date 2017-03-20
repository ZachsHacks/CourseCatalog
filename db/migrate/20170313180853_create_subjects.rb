class CreateSubjects < ActiveRecord::Migration[5.0]
	def change
		create_table :subjects do |t|
			t.string :name
			t.timestamps
		end
		add_column :subjects, :subject_id, :string
	end
end
