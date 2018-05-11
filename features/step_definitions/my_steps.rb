
Given(/^que abro el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

When(/^doy clic en el boton jugar$/) do
  click_button("Jugar")
end

