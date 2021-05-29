def flip_and_invert_image(image)
   image.map { |row| row.reverse.map { |cell| cell ^ 1 } }
end

