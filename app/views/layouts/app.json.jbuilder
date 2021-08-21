json.status @status_code
json.errors @errors
json.data do
    if @errors.empty? and @status_code < 400
        json.merge! JSON.parse(yield)
    else
        json.message @message
    end
end