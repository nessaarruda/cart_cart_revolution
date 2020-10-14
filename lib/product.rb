class Product

  attr_reader :name, :category, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @name = name
    @category = category
    @unit_price = unit_price
    @quantity = quantity.to_i
    @count = -1
    @hoarded = false
  end

  def total_price
    @unit_price * @quantity
  end

  def is_hoarded?
    @hoarded
  end

  def hoard
    @hoarded = true
  end

  def category
    @count += 1
    if @count == 0
      :paper
    else
      'toilet paper'
    end
  end
end
