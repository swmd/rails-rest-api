class Installment < ApplicationRecord
  # validations
  validates_presence_of :present_value, :number_of_installments, :monthly_interest_rate
end
