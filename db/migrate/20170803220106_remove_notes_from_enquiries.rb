class RemoveNotesFromEnquiries < ActiveRecord::Migration[5.0]
  def change
    remove_column :spree_enquiries, :notes, :text
  end
end
