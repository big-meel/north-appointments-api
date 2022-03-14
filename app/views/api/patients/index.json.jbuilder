json.count @api_patients.count
json.patients do
  json.array! @api_patients, partial: "api/patients/api_patient", as: :api_patient
end
