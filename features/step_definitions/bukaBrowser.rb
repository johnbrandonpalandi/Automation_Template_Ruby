Given("gw buka browser") do
  visit 'http://google.com'
end

When("gw search gundam") do
  fill_in 'q', with: 'gundam'
  find(:xpath, '//div[@class=\'FPdoLc tfB0Bf\']//input[@type=\'submit\'][@name=\'btnK\']').click
end

Then("hasil search gundam keluar") do
  page.has_selector?(:xpath, '//div[@class=\'kno-ecr-pt PZPZlf gsmt i8lZMc\']//span[@xpath=\'1\']')
end