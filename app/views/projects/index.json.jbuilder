json.array! @projects do |project|
  json.id project.id
  json.title project.title
  json.todos project.todos do |task|
    json.id task.id
    json.text task.text
    json.isCompleted task.is_completed
  end
end