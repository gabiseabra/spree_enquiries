class Spree::Enquiry < ApplicationRecord
  enum state: [ :pending, :concluded ]

  ransack_alias :book, :title_or_author

  def full_name
    "#{first_name} #{last_name}"
  end
end
