json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :note
  json.url task_url(task, format: :json)
end
