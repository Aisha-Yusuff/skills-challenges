class GrammarStats
  def initialize
    @text = ""
    @true_total = 0
    @false_total = 0
  
  end

  def check(text) # text is a string
    @text = text 
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    if text[0] == text[0].upcase && text[-1] == "." 
      @true_total += 1
      true 
    elsif text[0] == text[0].upcase &&  text[-1] == "!" 
      @true_total += 1
      true
    elsif text[0] == text[0].upcase && text[-1] == "?"
     @true_total += 1
     true
    else 
      @false_total += 1
      false
    end 
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    total = @true_total + @false_total
    true_total_only = @true_total
    percentage = ((true_total_only.to_f/ total.to_f) * 100).to_f
    return "#{percentage}%"
  end
end 




try = GrammarStats.new 
try.check("It's great")
try.check("it's good")
try.check("It's good.")
try.check("It's bad.")
try.check("It's good")
try.check("It's good.")
try.percentage_good


