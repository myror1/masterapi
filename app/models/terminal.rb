class Terminal < ActiveRecord::Base
	store :attribute_values, accessors: [ :attr_keys ], coder: JSON
end
