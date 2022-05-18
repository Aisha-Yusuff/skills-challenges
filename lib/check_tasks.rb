def check_tasks(text)
  if text.include? "#TODO"
    count = text.scan('#TODO').size
    return "Yes, #TODO appears #{count} times in this text."
  else 
  return "No #TODO found in this text."
  end 
end
