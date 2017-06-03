class Spree::Enquiry < ApplicationRecord
	enum state: [ :pending, :concluded ]
end
