FactoryBot.define do
  factory(:review) do
    content("Chuck Norris can divide by zero.")
    author('Joseph Ziemann')
    rating(5)
    city("Madam Malkin's Robes for All Occasions")
  end
end
