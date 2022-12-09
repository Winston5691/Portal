class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :email
      t.references :course
      t.references :student
      t.references :appointment

      t.timestamps
    end
  end
end
