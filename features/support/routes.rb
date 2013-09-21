require 'page-object/page_factory'
require 'require_all'

require_rel 'pages'

PageObject::PageFactory.routes = {
  :default => [[HomePage, :select_first_puppy],
               [DetailsPage, :add_to_cart],
               [ShoppingCartPage, :proceed_to_checkout],
               [CheckoutPage, :checkout]]
}
