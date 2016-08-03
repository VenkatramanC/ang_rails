if @task 
  json.data @task , :id , :titie
else
  json.errors 'No  such task'
end