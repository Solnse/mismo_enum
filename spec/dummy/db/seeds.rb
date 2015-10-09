# seed all enum tables.
MismoEnum::ClassList::ENUM_CLASSES.each do |n|
	"MismoEnum::#{n}".constantize.seed
end
