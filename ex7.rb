def wrap_text(text, wrapper)
  return "#{wrapper}#{text}#{wrapper}"
end

puts wrap_text("hello", "===")

wrap1 = wrap_text("TITLE", "###")
wrap2 = wrap_text(wrap1, "===")
wrap3 = wrap_text(wrap2, "---")

puts wrap3