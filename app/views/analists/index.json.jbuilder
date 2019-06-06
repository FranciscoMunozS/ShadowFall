json.set! :data do
  json.array! @analists do |analist|
    json.partial! 'analists/analist', analist: analist
    json.url  "
              #{link_to 'Show', analist }
              #{link_to 'Edit', edit_analist_path(analist)}
              #{link_to 'Destroy', analist, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end