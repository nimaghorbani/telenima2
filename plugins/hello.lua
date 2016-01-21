do

function run(msg, matches)
  return "Hello,slm,Salam,Slm,salam,سلام,hi,Hi, " .. matches[1]
end

return {
  description = "Says hello to someone", 
  usage = "say hello to [name]",
  patterns = {
    "^Hello EwShghm (.*)$",
    "^Hello EwShghm (.*)$"
  }, 
  run = run 
}

end
