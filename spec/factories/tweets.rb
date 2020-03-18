FactoryBot.define do
  factory :tweet do
    content { "これはテストです" }
    user { nil }
  end
end
