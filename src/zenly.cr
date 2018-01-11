require "gphoto2"

cameras = GPhoto2::Camera.all
# => [#<GPhoto2::Camera>, ...]

# list found cameras by model and port path
cameras.map { |c| puts [c.model, c.port] }
# => [["Nikon DSC D5100 (PTP mode)", "usb:250,006"], ...]

# use the first camera
camera = cameras.first

# ...or more conveniently
camera = GPhoto2::Camera.first

puts camera.can? :capture_image

file = camera.capture

# ...and save it to the current working directory
file.save
