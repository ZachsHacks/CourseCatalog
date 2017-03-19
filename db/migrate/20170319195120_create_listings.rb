class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :course_id
      t.integer :subject_id

      t.timestamps
    end
		add_column :subjects, :id, :string  
  end

end
