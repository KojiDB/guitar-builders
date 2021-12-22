class PrivateOrder < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '可' },
    { id: 3, name: '否' }
  ]

  include ActiveHash::Associations
  has_many :builders
end