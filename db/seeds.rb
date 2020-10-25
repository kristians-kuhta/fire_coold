def seed_products
  seed_filename = Rails.root.join('config/seeds/products.yml')
  seed_file = File.read(seed_filename)

  products = YAML.safe_load(seed_file).map(&:with_indifferent_access)

  products.each do |attributes|
    next if Product.where(name: attributes[:name]).exists?

    image = File.open(attributes[:image], 'r')

    product = Product.create!(attributes.except(:image))
    # We will save all of files within seeds as png
    product.image.attach(io: image, filename: "#{product.slug}.png")
  end
end

ActiveRecord::Base.transaction do
  seed_products
end
