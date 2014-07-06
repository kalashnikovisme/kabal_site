class NumberValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless value =~ /([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+)|([0-9]+)/
      record.errors.add(attribute, :number, options.merge(value: value))
    end
  end
end
