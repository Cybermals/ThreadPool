extends Node


func _ready():
	#Queue some jobs
	for i in range(4):
		get_node("ThreadPool").queue_job(
		    funcref(self, "say"),
		    "The count is " + str(i)
		)
	
	
func say(data):
	print(data)
