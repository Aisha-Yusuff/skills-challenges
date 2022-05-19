def checking_grammar(text)
  if text[-1] == "." && text[0] == text[0].upcase 
    return true 
  elsif text[-1] == "!" && text[0] == text[0].upcase 
    return true 
  elsif text[-1] == "?" && text[0] == text[0].upcase 
    return true
  else 
    return false 
  end
end 