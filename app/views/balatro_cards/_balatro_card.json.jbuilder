json.extract! balatro_card, :id, :name, :suit, :chips, :mult, :xmult, :trigger_count, :is_debuffed, :created_at, :updated_at
json.url balatro_card_url(balatro_card, format: :json)
