extends Node2D

func _ready():
	Ren.connect("story_step", self, "story", [], CONNECT_PERSIST)
	Ren.current_dialog_name = "garden"
	Ren.story_state = "start"
	Ren.story_step()


func story(dialog_name):
	if dialog_name == "graden":
		return
	
	match Ren.story_state:
		"start":
			Ren.show("alice", ["happy"], {"x":0.5, "y":360})
			Ren.say({"who":"alice", "what":"Welcome in my Garden [player_name]."})
	
	


