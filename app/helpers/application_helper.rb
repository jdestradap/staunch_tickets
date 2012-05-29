module ApplicationHelper
	def company_item_class(index, size)
		return 'first' if index == 0
		return 'last' if index == size - 1
		''
	end
end
