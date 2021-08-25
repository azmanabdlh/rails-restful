json.status response.status
json.errors @errors
json.data do
  if @errors.empty? && response.status < 400
    json.merge! JSON.parse(yield)
  else
    json.message @message
  end
end
