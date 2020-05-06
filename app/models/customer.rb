class Customer < ApplicationRecord
  BLACKLIST = [
      ['Add to black list', 1],
      ['To extract', 0]
  ]

  def add_to_black_list!
    self.completed = true
  end
end
