module UserProfilesHelper
  def action_pick_carrier_by_requester(status)
    case status
    when $carrier_pending
      "Pick a carrier"
    else
      ""
    end
  end

  def action_pay_by_requester(status)
    case status
    when $requester_unpaid
      "Pay deposit"
    else
      ""
    end
  end

  def action_rate_by_requester(status)
    case status
    when $order_finished
      "Rate this carrier"
    else
      ""
    end
  end

  def action_confirm_by_carrier(status)
    case status
    when $carrier_unpaid
      "Confirm and pay deposit"
    else
      ""
    end
  end

  def action_update_by_carrier(status)
    if status >= $order_generated && status < $order_finished
      "Update status"
    else
      ""
    end
  end
end