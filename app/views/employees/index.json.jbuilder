json.previous_page @employees.previous_page
json.next_page @employees.next_page

json.employees  @employees do |e|
  json.fullname e.fullname
  json.e_number e.e_number
  json.created_at e.created_at
end