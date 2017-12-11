class Seed

  def self.begin
    seed = Seed.new
    seed.generate_reviews
  end

  def generate_reviews
    20.times do |i|
      author =
      review = Review.create!(
        author: Faker::Book.author,
        content: Faker::ChuckNorris.fact,
        rating: Faker::Number.between(1, 5),
        city: Faker::HarryPotter.location
      )
      puts "Review #{i}: Author is #{review.author} and review is '#{review.content}' and the rating is #{review.rating} and the city is #{review.city}."
    end
  end
end

Seed.begin
