require 'modules/amount_creator'

class AmountManagement < ApplicationRecord
    include AmountCreator
    include Model::Amount

    delegate :initialize, to: :amount

    def self.generate_amount_as_money(amount, currency)
        AmountCreator.initialize([amount, currency])
    end

    def self.net_amount(target)
		target.sum(&:net_amount)
	end

end