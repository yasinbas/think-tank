class Question < ApplicationRecord
  belongs_to :survey
  has_many :options, dependent: :destroy

  # Enum tanımı
  enum :question_type, { text: 0, choice: 1 }
end
