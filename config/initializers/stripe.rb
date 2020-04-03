Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_Y84rnSDJpoMzeAjls6jybumy00xDY84fDZ'],
  :secret_key      => ENV['sk_test_TvF11ePrjBpVEFUgW69UdYVd00iTxZvB3n']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
