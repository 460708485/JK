function doClick1(o){
	 o.className="title1a";
	 var titlenum = document.getElementById('titlenum');
	 var j;
	 var id;
	 var b;
	 for(var i=1;i<=titlenum.value;i++){
	   id ="bb"+i;
	   j = document.getElementById(id);
	   b = document.getElementById("b"+i);
	   if(id != o.id){
			j.className="title1b";
			b.style.visibility = "hidden";
	   }else{
			b.style.visibility = "visible";
	   }
	 }
}