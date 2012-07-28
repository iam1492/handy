object @image

attributes :image_file_name
	
node (:image_path) { |image| image_url(image) }
