class TextShout < ApplicationRecord
	validades :body, presence: true, lenght: { in: 1..144 }
end
