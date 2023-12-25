class AccountPayment < ApplicationRecord
  validates_presence_of :account_id, :payment_id
  belongs_to :account
  belongs_to :payment
end
