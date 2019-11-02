class AddSuspectToComplaint < ActiveRecord::Migration[5.1]
  def change
    add_column :complaints, :suspect, :boolean, default: false
  end
end
