module ApplicationHelper

  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      else
        flash_type.to_s
    end
  end

  def bootstrap_alt_class_for(flash_type)
    case flash_type
      when "notice"
        "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end
end
