class StringsNumber < ActiveHash::Base
  self.date = [
    { id: 1, name: '---' },
    { id: 2, name: '6' },
    { id: 3, name: '7' },
    { id: 4, name: '8' },
    { id: 5, name: '9' },
    { id: 6, name: 'other' }
  ]

  include ActiveHash::Associations
  has_many :guitars
end