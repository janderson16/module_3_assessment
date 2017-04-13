Fabricator(:item) do
  name {Faker::Beer.name}
  description {Faker::ChuckNorris.fact}
  image_url {Faker::LoremPixel.image("50x60")}
end
