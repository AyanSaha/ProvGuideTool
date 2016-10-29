class ProvGuideTemp < ApplicationRecord
	self.primary_keys= :dialplan,:clli,:npa,:rate_center,:locality,:county
end
