class GuitarType < ActiveHash::Base
  self.date = [
    { id: 1, name: '---' },
    { id: 2, name: 'Acoustic Guitar' },
    { id: 3, name: 'Electric Guitar' }
  ]

  include ActiveHash::Associations
  has_many :guitars
end