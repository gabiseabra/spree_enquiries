class AddBookToEnquiries < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_enquiries, :title, :string
    add_column :spree_enquiries, :author, :string
    add_column :spree_enquiries, :publisher, :string
  end
end
