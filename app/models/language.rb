class Language < ApplicationRecord
  belongs_to :curriculum
  enum speaking: { basic: 0, intermediate: 1, advanced: 2, bilingual: 3, native: 4 }
  enum writing: { basic: 0, intermediate: 1, advanced: 2, bilingual: 3, native: 4 }
  enum reading: { basic: 0, intermediate: 1, advanced: 2, bilingual: 3, native: 4 }
end
