json.extract! api_patient, :id, :created_at, :updated_at
json.url api_patient_url(api_patient, format: :json)
