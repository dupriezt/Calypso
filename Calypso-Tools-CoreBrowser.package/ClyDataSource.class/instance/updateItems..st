private
updateItems: dataSourceItems
	"I update given data source items with refreshed environment items	which belongs to same actual objects. If there is no actual object anymore for some of data source item I will put nil to it.
	Then users should correctly process updated items"
	| updatedItems |
	updatedItems := environmentCursor findItemsWith: (dataSourceItems collect: #actualObject).

	dataSourceItems with: updatedItems do: [ :dataSourceItem :environmentItem | 
		dataSourceItem updateItemWith: environmentItem  ]