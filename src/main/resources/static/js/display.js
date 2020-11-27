/**
 * 
 */

	function AddEmp() {

		var a = document.getElementById("AddEmp");
		a.style.display = "block";

		var c = document.getElementById("ViewAtt");
		c.style.display = "none";

		var d = document.getElementById("YourPro");
		d.style.display = "none";
		var e = document.getElementById("EmpList");
		e.style.display = "none";

	}
	function ViewAtt() {

		var a = document.getElementById("AddEmp");
		a.style.display = "none";

		var c = document.getElementById("ViewAtt");
		c.style.display = "block";

		var d = document.getElementById("YourPro");
		d.style.display = "none";

		var e = document.getElementById("EmpList");
		e.style.display = "none";

	}
	function YourPro() {

		console.log("function called");
		var a = document.getElementById("AddEmp");
		a.style.display = "none";
		

		var c = document.getElementById("ViewAtt");
		c.style.display = "none";
	
		var e = document.getElementById("EmpList");
		e.style.display = "none";

		var d = document.getElementById("YourPro");
		d.style.display = "block";
	
	}
	
