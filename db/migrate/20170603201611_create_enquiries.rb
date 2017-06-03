class CreateEnquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :spree_enquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :description
      t.text :notes
      t.integer :state, default: 0, null: false
      t.date :start_date, default: Time.now
      t.date :end_date

      t.timestamps
    end
  end
end
