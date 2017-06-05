class Spree::Enquiry < ApplicationRecord
  enum state: [ :pending, :concluded ]

  def full_name
    "#{first_name} #{last_name}"
  end
end
