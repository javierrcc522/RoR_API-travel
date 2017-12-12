FactoryBot.define do
  factory :user do

  end
  factory(:review) do
    content("Chuck Norris can divide by zero.")
    title('Joseph Ziemann')
    rating(5)
    city("Madam Malkin's Robes for All Occasions")
  end
end
