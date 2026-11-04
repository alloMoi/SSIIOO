function somme(){
    var a = document.getElementById("N1").value;
    var b = document.getElementById("N2").value;
    var c = Number(a) + Number(b);
  
    document.getElementById("S1").value=c;
}
function soustration()
{
    var a = document.getElementById("N1").value;
    var b = document.getElementById("N2").value;
    var c = Number(a) - Number(b);
  
    document.getElementById("S1").value=c;
}
function produit()
{
    var a = document.getElementById("N1").value;
    var b = document.getElementById("N2").value;
    var c = Number(a) * Number(b);
  
    document.getElementById("S1").value=c;
}
function division()
{
    var a = document.getElementById("N1").value;
    var b = document.getElementById("N2").value;
    var c = Number(a) / Number(b);
  
    document.getElementById("S1").value=c;
}
function permutation() {
    let n1 = document.getElementById("N1").value;
    let n2 = document.getElementById("N2").value;

    let temp;

    temp = n1;
    n1 = n2;
    n2 = temp;

    document.getElementById("N1").value = n1;
    document.getElementById("N2").value = n2;
}

function parite()
{
    var x = document.getElementById("N1").value
	if (x % 2 ==0){
    	document.getElementById("PI1").value = " Paire "
	}
	else{
    	document.getElementById("PI1").value = " Impaire "
	}
}

function effacer() {
    document.getElementById("PI1").value = "";
    document.getElementById("S1").value = "";
    document.getElementById("N1").value = "";
    document.getElementById("N2").value = "";
}