module.exports = new function(){
	var db = null;
	this.init = function(){
	  var mysql =require("mysql");
	  db = mysql.createConnection({
	    host :"localhost",
	    user :"root",
	    password :"",
	    database :"h&bstore"
	  });
	  db.connect(function(err){
	    if(err){
	      console.log("Error Connect DB.");
	      console.log(err);
	    }else{
	      console.log("Connect DB Success");
	    }
	  })
	}
	this.listProduct = function(callbackError,callbackSuccess){
		var sql = "select * from products";
		db.query(sql,function(err,rows,fields){
			if(err){
				console.log("Error listProduct");
				console.log(err);
				callbackError("Error");
			}else{
				var datas = [];
				for(var r in rows){
					var row_data = rows[r];
					datas.push({
						productID : row_data.ProductID,
						productName : row_data.ProductName,
						productImg : row_data.ImgUrl,
						unitPrice : row_data.UnitPrice
					});
				}
				callbackSuccess(datas);
			}
		})
	}

	this.saveProduct = function(pName,dName,ImgUrl,Uprice,Dates){
		var sql = "insert into products(ProductName,Description,ImgUrl,UnitPrice,Dates)";
		sql +=" values('"+pName+"','"+dName+"','"+ImgUrl+"','"+Uprice+"','"+Dates+"')";
		console.log(sql);
		db.query(sql,function(err,rows,fields){
			if(err){
				console.log(err);
				//callbackError(err.message);
			}else if(rows.length==0){
				console.log("ไม่สามารถบันทึกข้อมูลได้");
			}else{
				console.log(rows.insertId);
			}
		});
	}

}