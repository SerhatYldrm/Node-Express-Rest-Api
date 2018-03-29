var app   = require('express')();
var http = require('http').Server(app);
var mysql = require('mysql');
var bodyParser = require("body-parser");
var connection = mysql.createConnection({
		host     : 'localhost',
		user     : 'root',
		password : '',
		database : 'testrest',
	});
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

	
app.get('/',function(req,res){
	var data = {
		"Data":""
	};
	data["Data"] = "Welcome to COREBIT Task DEMO...";
	res.json(data);
});

app.get('/tasks',function(req,res){			//all task
	var data = {		
		"Tasks":""
	};
	
	connection.query("SELECT * from task",function(err, rows, fields){
		if(rows.length != 0){
			data["Tasks"] = rows;
			res.json(data);
		}else{
			data["Tasks"] = 'No Tasks Found..';
			res.json(data);
		}
	});
});

app.get('/tasks/:task_id',function(req,res){			//task_id 
	var data = {
		"Tasks":""
	};
	
	var sid = req.params.task_id;
	
	connection.query("SELECT * from task WHERE id = ?",[sid],function(err, rows, fields){
		if(rows.length != 0){
			data["Tasks"] = rows;
			res.json(data);
		}else{
			data["Tasks"] = 'No tasks Found..';
			res.json(data);
		}
	});
});


app.post('/tasks',function(req,res){			//add task
	var Title = req.body.title;
	var Description = req.body.description;
	var Project_id = req.body.project_id;
	var Due_date = req.body.due_date;
	var Status = req.body.status;
	
	var data = {
		"Tasks":""
	};
	
	if(!!Title && !!Description && !!Project_id && !!Due_date && !!Status){
		connection.query("INSERT INTO task VALUES('',?,?,?,?,?)",[Title,Description,Project_id,Due_date,Status],function(err, rows, fields){
			if(!!err){
				data["Tasks"] = "Error Adding data";
			}else{
				data["Tasks"] = "Task Added Successfully";
			}
			res.json(data);
		});
	}else{
		data["Tasks"] = "Please provide all required data (i.e : title, description, project_id, due_date, status)";
		res.json(data);
	}
});


http.listen(8888,function(){
	console.log("Connected & Listen to port 8888");
});