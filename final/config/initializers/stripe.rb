Rails.configuration.stripe = {
  :publishable_key => 'pk_live_YHE1plOaTYu0DX1gDRk6eFsR',
  :secret_key      => 'sk_live_SiaRUhnsMqc705VXFhrgc2CX'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]