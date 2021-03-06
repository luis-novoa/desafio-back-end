require 'rails_helper'

RSpec.describe Transaction, type: :model do
  subject { Transaction.new }

  it { is_expected.to validate_presence_of(:transaction_type) }
  it { is_expected.to validate_presence_of(:date) }
  it { is_expected.to validate_presence_of(:value) }
  it { is_expected.to validate_presence_of(:cpf) }
  it { is_expected.to validate_presence_of(:credit_card) }

  it { is_expected.to validate_numericality_of(:transaction_type).only_integer }
  it { is_expected.to validate_numericality_of(:value) }

  it { is_expected.to validate_length_of(:cpf).is_equal_to(14) }
  it { is_expected.to validate_length_of(:credit_card).is_equal_to(12) }

  it { is_expected.to belong_to(:company) }
end
