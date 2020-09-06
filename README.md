# doLater();
## by WubsGames

**doLater()** is a small set of functions written in GM:S 2.3 to help run tasks later!

## Basic use:

    task={
	    _id : id,
	    _message : "Hello World", 
	    taskScript : function(){ 
		    show_message(_message);
		    _id.image_blend=c_lime;
	    }
    }
    doLater(task,60);

## Thanks for checkign it out!

![Gif](http://filesbit.ch/u/T8xMh1lBOo.gif)
