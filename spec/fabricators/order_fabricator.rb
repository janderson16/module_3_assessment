Fabricator(:orders) do
  amount {Faker::Number.decimal}
  user_id
end
