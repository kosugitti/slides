library(magick)
library(grid)
library(tidyverse)
library(hexSticker)

imgurl <- "~/Dropbox/Git/slides/YamaguchiR001/YamaguchiR_logo_cut.png"

sticker(imgurl,
  package = "",
  s_x = 1,
  s_y = 1,
  s_width = 0.8,
  s_height = 0.8,
  h_fill = "#ffff00", p_family = "gochi", p_color = "#990099",
  filename = "YRstiker.png"
)
