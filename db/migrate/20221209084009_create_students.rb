class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :course
      t.references :appointment
      t.string :name
      t.string :email
      t.string :registration

      t.timestamps
    end
  end
end
