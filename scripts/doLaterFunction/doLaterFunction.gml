///////////////////////////////////////////////////////////////////
///                                                             ///
///    DoLater() by WubsGames                                   ///
///        wubsgames.com                                        ///
///                                                             ///
///    DoLater works by building a struct that contains all the ///
///    information we need to perform a task later.             ///
///    as well as the actual function that we wish to run later ///
///    since the code is not ran on this instance, we usually   ///
///    want to pass the id of the instance, to refer to later   ///
///     -Wubs                                                   ///
///                                                             ///
///////////////////////////////////////////////////////////////////

/// @function doLater(task,delay)
function doLater(_task,_delay){
	task=copyStruct(_task)///we first copy the original struct
	task.delay=_delay     ///and add a delay variable
	task.done=false       ///tasks marked "done" get cleaned up automatically
	task.func=method(task,_task.taskScript)///we copy the function, and rescope as a method variable
	ds_list_add(objDoLater.todoList,task)///add the new task to the todoList
	delete _task//finally we delete the original struct.
}

function copyStruct(_a){// this function copys a struct, by listing variable names
	                    // into an array, and then duplicating them on the new struct
						// gamemaker only passes function variables by refrence, we handle that in the doLater function with method ()
	a = _a//original struct             
	var b = {};//new blank struckt 
	var vars = variable_struct_get_names(a);//build the array
	var i = 0;
	
	for (var i=0; i<array_length(vars); i++){//loop the array
	    var name = vars[i];//find the variable names
	    variable_struct_set(b, name, variable_struct_get(a, name));//assign the var to the new struct
	}
	return b;//retrn our new struct
}
	
	
