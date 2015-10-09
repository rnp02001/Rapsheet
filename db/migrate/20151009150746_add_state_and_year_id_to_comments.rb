class AddStateAndYearIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :crime, index: true
    add_reference :comments, :year, index: true
  end
end
