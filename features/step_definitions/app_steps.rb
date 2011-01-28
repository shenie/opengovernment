def parse_person_name(name)
  if name =~ /,/
    name.split(/,/, 2).reverse
  else
    name =~ /^(.*) ([^ ]*)$/
    [$1, $2]
  end
end

Given /^the usual test setup/ do
  #setup_districts
end

Given /^a state named "([^\"]*)" with launch date of "([^\"]*)"$/ do |arg1, arg2|
  State.create!(
    :name => arg1,
    :abbrev => arg1[0,2].upcase,
    :launch_date => eval("#{arg2}")
  )
end

Given /^a state named "([^\"]*)"$/ do |arg1|
  State.create!(
    :name => arg1,
    :abbrev => arg1[0,2]
  )
end
