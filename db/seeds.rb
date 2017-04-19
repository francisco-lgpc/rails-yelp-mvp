# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
REVIEW_CONTENT_ARR = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ex justo, cursus ut nisl vel, dictum porta justo. Curabitur mollis viverra nunc at facilisis. Curabitur et est sed dui vulputate lobortis. Nullam maximus hendrerit urna sed lobortis. Nam luctus nulla in scelerisque elementum. Donec dignissim odio id urna tincidunt sodales. Suspendisse pharetra accumsan dui, a dignissim nibh posuere a. Phasellus finibus mauris ut nulla rhoncus consequat. Nunc sed sollicitudin diam, eu dapibus velit. Sed sit amet dui at diam rhoncus lacinia quis in dolor. Praesent eleifend tellus vitae tortor dapibus, non condimentum enim fermentum. Proin maximus fermentum efficitur. Donec semper arcu nec magna sollicitudin, id facilisis risus consectetur. Ut aliquam ac arcu sit amet ultrices. Integer quam lacus, ullamcorper ac orci ut, lobortis dapibus nisi. In rhoncus varius mattis.",
  "Nullam nec ipsum aliquam, laoreet arcu eu, mattis augue. In non ante sed tortor ullamcorper rutrum at ac ligula. Vivamus eu tellus vel arcu fermentum mollis non vel nisi. Nulla facilisi. Curabitur porta ullamcorper nunc nec lobortis. Nulla risus nisi, consequat sed quam eget, fermentum faucibus urna. Vivamus tincidunt blandit molestie. Nulla at erat vehicula, ultrices lacus vitae, iaculis odio. Praesent consectetur nisl et sem dignissim vulputate. Vivamus eu condimentum sem, eget tincidunt lacus. Mauris ullamcorper pulvinar nisi, ac vulputate ante feugiat vel.",
  "Morbi varius, elit ac dignissim ultricies, urna risus ultrices ipsum, et aliquam est libero at felis. Vivamus vulputate rutrum enim eu eleifend. Integer pellentesque eros dolor, non sagittis arcu pretium a. Pellentesque sollicitudin orci enim, id lacinia quam malesuada id. Sed varius urna turpis, vel sagittis nisi mollis ac. Pellentesque eleifend neque ut pellentesque aliquam. Nunc eu placerat est, in finibus leo. Proin massa dolor, imperdiet quis nisi et, feugiat bibendum ipsum. Pellentesque vel purus vel libero viverra eleifend vitae semper urna. Proin sollicitudin felis et nibh euismod, pharetra hendrerit nisi molestie. Duis ornare sollicitudin nibh eu consectetur. Donec viverra lectus vitae lobortis vestibulum. Mauris eros risus, congue sed aliquam nec, laoreet vel urna. Nunc efficitur aliquet ex in lacinia.",
  "Nunc viverra auctor aliquet. Fusce consequat finibus neque, sed lacinia sapien. Proin eu ligula fringilla, tincidunt metus ac, posuere sem. Proin ac diam consectetur, tempor ligula a, ullamcorper massa. Nullam vitae tincidunt dolor. Quisque rutrum erat et orci auctor mollis. Aliquam tempus vulputate tempor. Nullam ac gravida neque. Suspendisse ut aliquet sapien. Mauris sem ex, suscipit at ipsum eu, aliquet egestas ligula. In hac habitasse platea dictumst.",
  "Maecenas pretium, diam a tempor hendrerit, massa urna pulvinar arcu, non luctus justo justo a urna. Etiam libero risus, scelerisque ac erat et, congue porttitor ipsum. Morbi interdum ante sapien, in efficitur sapien tincidunt nec. Proin et pellentesque massa. Cras fringilla arcu sed ante viverra mattis. Fusce efficitur enim vitae diam fermentum condimentum. Ut a nisl congue, interdum ex eu, malesuada mi. Suspendisse non ornare libero. Nunc mattis rutrum magna sed fringilla. In hac habitasse platea dictumst. Cras dignissim purus eu aliquam egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas."
]

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

100.times do
  restaurants_attributes =
  {
    name: Faker::Team.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: CATEGORIES.sample
  }
  restaurant = Restaurant.create(restaurants_attributes)

  rand(3..15).times do
    restaurant.reviews << Review.create(content: REVIEW_CONTENT_ARR.sample, rating: rand(0..5) )
  end
end
puts 'Finished!'

