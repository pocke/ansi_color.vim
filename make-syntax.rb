COLORS_FG = {
  Black: 30,
  Red: 31,
  Green: 32,
  Yellow: 33,
  Blue: 34,
  Magenta: 35,
  Cyan: 36,
  White: 37,

  #LightBlack: 90,
  LightRed: 91,
  LightGreen: 92,
  LightYellow: 93,
  LightBlue: 94,
  LightMagenta: 95,
  LightCyan: 96,
  #LightWhite: 97,
}

COLORS_BG = {
  Black: 40,
  Red: 41,
  Green: 42,
  Yellow: 43,
  Blue: 44,
  Magenta: 45,
  Cyan: 46,
  White: 47,

  #LightBlack: 100,
  LightRed: 101,
  LightGreen: 102,
  LightYellow: 103,
  LightBlue: 104,
  LightMagenta: 105,
  LightCyan: 106,
  #LightWhite: 107,
}

def hi(fg: nil, bg: nil, bold: false)
  "hi ansiColor_#{fg}_#{bg}_#{'bold' if bold} #{"ctermfg=#{fg}" if fg} #{"ctermbg=#{bg}" if bg} #{'cterm=bold' if bold}"
end

puts hi(bold: true)
COLORS_FG.keys.each do |fg_color|
  puts hi(fg: fg_color)
  puts hi(fg: fg_color, bold: true)
  COLORS_BG.keys.each do |bg_color|
    puts hi(fg: fg_color, bg: bg_color)
    puts hi(fg: fg_color, bg: bg_color, bold: true)
  end
end

