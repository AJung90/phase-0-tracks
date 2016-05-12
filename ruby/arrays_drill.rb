chicago = []
p chicago
chicago = ["Bean", "deepdish pizza", "The L", "Sears Tower", "Wrigleyville"]
p chicago
chicago.delete("The L")
p chicago
chicago.insert(2, "Portillo's")
p chicago
chicago.delete("Bean")
p chicago

include = chicago.include?("The L")
	if include == true
		p "Chicago includes The L"
	else
		p "Chicago does not include The L"
	end

paris = ["Eiffel Tower", "The Louvre", "Mona Lisa"]
p paris
chicaris = chicago + paris
p chicaris