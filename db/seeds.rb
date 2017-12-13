class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
    seed.generate_reviews
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city,
        description: Faker::Hipster.sentence)
      puts "Destination #{i}: country is #{destination.country} and city is '#{destination.city} and description is '#{destination.description}'."
    end
  end

  def generate_reviews
  20.times do |i|
      review = Review.create!(
        title: Faker::Book.title,
        content: Faker::ChuckNorris.fact,
        rating: Faker::Number.between(1, 5),
        destination_id: Faker::Number.between(Destination.first.id, Destination.last.id))
      puts "Review #{i}: rating is #{review.rating} and title is #{review.title} and content is '#{review.content}and destination_id is '#{review.destination_id}'."
    end
  end
end

Seed.begin
