/// @description doLater Examples

image_blend=c_gray

///Showing a message later.
task={
	_id : id,//set the ID to use later
	_message : "Hello World", //this is the text we want to display
	taskScript : function(){ //the actual function to call later.
		show_message(_message);
		_id.image_blend=c_lime;
	}
}
doLater(task,60);///add our function to the todo list.

///more examples below.
#region more examples
task={
	_id : id,
	taskScript : function(){
		with(_id){instance_destroy()}
	}
}
doLater(task,120);


task={
	_x : x,
	_y : y,
	_depth : depth,
	taskScript : function(){
		instance_create_depth(_x,_y,_depth,objButtonLater)
	}
}
doLater(task,240);
#endregion
