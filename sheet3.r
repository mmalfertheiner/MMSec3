require("MMSec")

# Load the image

image <- load.jpg("images/Image01.jpg")
image <- as.matrix(image) * 255
ref_pattern <- load.jpg("outputs/pattern.jpg")
ref_pattern <- as.matrix(ref_pattern) * 255

med <- median.2d(image, 3)
noise <- abs(med - image)

cor <- cor.test(ref_pattern, noise, method="pearson")
print(cor)
