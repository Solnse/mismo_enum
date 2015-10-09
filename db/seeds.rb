MismoEnum::ClassList::ENUMS.each do |enum|
  "MismoEnum::#{enum.camelize}".constantize.seed
end
