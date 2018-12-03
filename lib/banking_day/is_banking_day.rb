require 'active_support/time'
require 'holidays'

module BankingDay
  class IsBankingDay

    def self.is_banking_day(datetime, country_code)
      datetime = DateTime.parse(datetime)
      return false if datetime.on_weekend? || Holidays.on(datetime, country_code&.to_sym)&.first.present?

      true
    end
  end
end
