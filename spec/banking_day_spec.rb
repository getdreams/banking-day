require 'banking_day'
require 'timecop'

describe BankingDay::IsBankingDay do
  it "IsBankingDay assert true" do
    expect(BankingDay::IsBankingDay.is_banking_day('2018-01-02', :no)).to eql(true)
  end

  it "IsBankingDay assert false" do
    expect(BankingDay::IsBankingDay.is_banking_day('2018-01-01', :no)).to eql(false)
  end

  it "IsBankingDay parses string code" do
    expect(BankingDay::IsBankingDay.is_banking_day('2018-01-01', 'no')).to eql(false)
  end
end

describe BankingDay::NextBankingDay do
  it "NextBankingDay 2018-12-06" do
    Timecop.freeze(Time.parse('20181205 08:54:00')) do
      expect(BankingDay::NextBankingDay.next_banking_day('2018-12-05', :fi)).to eql(DateTime.parse('2018-12-07 00:00:00'))
    end
  end
end
