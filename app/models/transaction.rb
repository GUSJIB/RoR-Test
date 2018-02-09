class Transaction < ApplicationRecord

  require 'securerandom'

  def self.top_up(amount)
    create(typeof: "top_up", amount: amount, txref: SecureRandom.hex, asset: "cash")
    balance = Balance.first
    balance.update(cash: balance.cash + amount.to_d)
  end

  def self.buy(unit)
    amount = unit.to_d * 10
    create(typeof: "buy", amount: amount, txref: SecureRandom.hex, asset: "gold")
    balance = Balance.first
    balance.update(cash: balance.cash - amount, gld: balance.gld + unit.to_d)
  end

  def self.sell(unit)
    amount = unit.to_d * 10
    create(typeof: "sell", amount: amount, txref: SecureRandom.hex, asset: "gold")
    balance = Balance.first
    balance.update(cash: balance.cash + amount, gld: balance.gld - unit.to_d)
  end

end
