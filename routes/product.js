var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) { 
		shop.listProduct(function(errorMessage){
			console.log(errorMessage);
			res.send("Error");
		},function(data){
			console.log(data);
			res.json(data);
		});
});

router.post('/save',function(req,res){
    shop.saveProduct(req.body.pName);
});
module.exports = router;
