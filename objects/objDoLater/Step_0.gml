/// @description doLater processing

var _thisTask// create an empty var
for(var i=0; i<ds_list_size(todoList); i++;){//loop all tasks in the list
	_thisTask=todoList[| i]//assign the task to our var
	

	if _thisTask.delay>0{
		_thisTask.delay-=1// if the timer has not reach 0 yet, we lower it by 1
	}else{
		_thisTask.func()// otherwise, run the function
		_thisTask.done=true//and set the task to "done"
	}

}

for(var i=0; i<ds_list_size(todoList); i++;){// loop the list again
	_thisTask=todoList[| i]//assign task to var
	if _thisTask.done{//check if task is "done"
		ds_list_delete(todoList,i)//delete task from list.
	}
}