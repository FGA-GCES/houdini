class AmountManagement < ApplicationRecord


    def generate_amount_as_money(amount, currency)
        Amount.new(amount||0, currency)
    end

    def net_amount(target)
		target.sum(&:net_amount)
	end

end