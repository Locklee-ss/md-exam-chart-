from PIL import Image

# Load the uploaded image
input_path = "recommended_badge.png"
output_path = "badge.png"

# Open and resize the image
with Image.open(input_path) as img:
    resized_img = img.resize((200, 169))
    resized_img.save(output_path)

output_path
