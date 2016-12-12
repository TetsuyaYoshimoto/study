#encoding=utf-8

from PIL import import Image
from PIL import import ImageOps
import os
import sys

if __name__"__main__":
    if len(sys.argv) == 3:
        input_path = sys.argv[1]
        output_path = sys.argv[2]
    else:
        sys.exit("Need 2 args.Input ans Output path")

    input_Image = Image.open(Input_path)
    output_image = ImageOps.grayscale(input_image)
    output_image.save(output_path)


