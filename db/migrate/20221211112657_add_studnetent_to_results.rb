class AddStudnetentToResults < ActiveRecord::Migration[7.0]
  def change
    add_reference :results, :student, index: true
  end
end
