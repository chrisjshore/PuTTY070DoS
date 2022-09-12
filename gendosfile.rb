File.open("dos.txt", "w") do |f|
  f.write "O" + "\u0308"*1024*1024 + "\n"
end
