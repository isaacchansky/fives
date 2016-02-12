class Entry < ApplicationRecord
  belongs_to :account

  def things
    return [thing_one, thing_two, thing_three, thing_four, thing_five]
  end
end
