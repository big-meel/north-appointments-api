json.user do
  json.extract! api_patient,
    :id, 
    :firstname, 
    :middlename,
    :lastname,
    :email,
    :date_of_birth,
    :country,
    :contact_number,
    :ip_address, 
    :created_at, 
    :updated_at
  json.url api_patient_url(api_patient, format: :json)
end
