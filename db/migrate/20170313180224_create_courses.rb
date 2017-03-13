class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.boolean :independent_study
      t.string :name
      t.string :code
      t.integer :credits
      t.text :description

      t.timestamps
    end
  end
end
