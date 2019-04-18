if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_2G8VAkNxW3VNntMAVDOQXNyn00VQ6cNerA',
    secret_key: 'sk_test_sv3TWX5r7F7xYI5CdSB2AJUZ00HtycLSjt'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
