class AddResultsAssociationsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :results, index: true
  end
end
