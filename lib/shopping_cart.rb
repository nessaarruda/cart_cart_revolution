class ShoppingCart

  attr_reader :name, :capacity, :products, :details

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.chomp("items").to_i
    @products = []
    @details_hash = {}
    @sum = 0
  end

  def add_product(product)
    @products << product
  end

  def details
    @details_hash[:name] = @name
    @details_hash[:capacity] = @capacity
    @details_hash
  end

  def total_number_of_products
    products.each do |product|
      @sum += product.quantity
    end
    @sum
  end

  def is_full?
    if @sum <= @capacity
      true
    end
  end

  def products_by_category(category)
    expected = []
      products.each do |product|
        if product.category == category
          expected << product
        end
      end
      expected
  end
end
