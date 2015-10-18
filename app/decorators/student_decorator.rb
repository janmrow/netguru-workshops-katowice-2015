class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
  	if subject_item.subject_item_notes.present?
  	  "%.2f" % subject_item.subject_item_notes.average(:value).to_f.round(2)
  	else
  	  "0.00"
  	end
  end
end
