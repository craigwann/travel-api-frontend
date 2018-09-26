for controller -   

def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @nyt = NytBestseller.new
    @nyt_json = []
    JSON.parse(@nyt.get_list)["results"]["books"].each do |book|
      @nyt_json.push(book)
    end
  end


  for view -

  <% @products.each do |product| %>
  <p><%= product.item %> | <%= number_to_currency product.price %>
  	<%= form_for(@order_item, :html => {:remote => true}) do |f| %>
  		<%= f.hidden_field :product_id, value: product.id %>
  		<%= f.number_field :quantity, class: "quantity" %>
  		<span class="cart_ttl" id="add_to_cart_<%= product.id %>"><%= f.submit "Add to cart" %></span>
  	<% end %></p>
  <% end %>

  <% @nyt_json.each do |showbook| %>
  <p> <%= showbook["title"] %>, <%= showbook["author"] %>, <%= showbook["publisher"] %></p>
  <% end %>
