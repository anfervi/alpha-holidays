class Language < ApplicationRecord
  belongs_to :curriculum
  enum level: { A1: 0, A2: 1, B1: 2, B2: 3, C1: 4, C2: 5 }, _suffix: true
  enum speaking_level: { A1: 0, A2: 1, B1: 2, B2: 3, C1: 4, C2: 5 }, _prefix: :speaking
  enum reading_level: { A1: 0, A2: 1, B1: 2, B2: 3, C1: 4, C2: 5 }, _prefix: :reading
  enum writing_level: { A1: 0, A2: 1, B1: 2, B2: 3, C1: 4, C2: 5 }, _prefix: :writing
end
