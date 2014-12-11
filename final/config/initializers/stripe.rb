Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_9WLzu1ZGAgVjleaqI3Lz5gOb'],
  :secret_key      => ENV['sk_test_Ow2i53O1A158gtCXC8GuhhaV']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]