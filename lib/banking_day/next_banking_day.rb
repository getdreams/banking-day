module BankingDay
  class NextBankingDay

    def self.next_banking_day(date, country_code)
      date = DateTime.parse(date)
      is_holiday = true

      while is_holiday
        date += 1.day
        is_holiday = Holidays.on(date, country_code&.to_sym)&.first.present?
      end

      date
    end
  end
end
