class AddUserAssociationToStudentAndTutor < ActiveRecord::Migration[7.0]
  def change
    add_reference :tutors, :user, index: true 
    add_reference :students, :user, index: true 
  end
end
