json.set! :data do
  json.array! @companies do |company|
    json.partial! 'companies/company', company: company
    json.url  "
              #{link_to 'Show', company }
              #{link_to 'Edit', edit_company_path(company)}
              #{link_to 'Destroy', company, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end