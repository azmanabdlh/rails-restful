json.status @status_code
json.errors @errors
json.data do
    if @errors.empty? && @message.strip.empty?
        json.merge! JSON.parse(yield)
    else
        json.message @message
    end
end