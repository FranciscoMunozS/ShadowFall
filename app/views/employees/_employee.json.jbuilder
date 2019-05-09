json.extract! employee, :id, :name, :rut, :profession, :charge, :amount, :technical_unit, :fiscal_inspector, :created_at, :updated_at
json.url employee_url(employee, format: :json)
