module FatZebra
  ##
  # == FatZebra \Direct \Credit
  #
  # Manage direct credit for the API
  #
  # * search
  # * save
  # * find
  # * delete
  #
  class DirectCredit < APIResource

    include FatZebra::APIOperation::Find
    include FatZebra::APIOperation::Search
    include FatZebra::APIOperation::Save
    include FatZebra::APIOperation::Delete

    validates :description, required: true, on: :create
    validates :amount, required: true, type: :positive_numeric, on: :create
    validates :bsb, required: true, on: :create
    validates :account_name, required: true, on: :create
    validates :account_number, required: true, on: :create

  end
end
