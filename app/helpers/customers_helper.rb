module CustomersHelper
  Number_province_hash = {'204' => 'Manitoba', '403' => 'Alberta', '306' => 'Saskatchewan'}

  def province_from_number(number)
    area_code = number_to_phone(number).split('-')[0]
    Number_province_hash.key?(area_code) ? Number_province_hash[area_code] : 'Unknown'
  end
end
