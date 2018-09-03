json.array! @employees.each do |employee|
  json.id employee.id
  json.name employee.name
  json.title employee.title
end
