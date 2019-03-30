class CateringEstabilishment < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many_attached :pictures
  validates :title, presence: true
  validates :description, presence: true
  # validates :image_type

  # def thumbnail input
  #   return self.pictures[input].variant(resize: '300x300').proessed
  # end

end
