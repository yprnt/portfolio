function Addition() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
    document.getElementById("t3").value = c;
    
}

function Soustraction() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
    document.getElementById("t3").value = c;
    
}

function Multiplication() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
    document.getElementById("t3").value = c;
    
}

function Division() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
    document.getElementById("t3").value = c;
    
}

function Parite() {
    var a = document.getElementById("t3").value;

    if (a%2 == 0) {
        document.getElementById("t4").value = "Pair";
    }
    else {
        document.getElementById("t4").value = "Impair";
    }
}

function Permuter() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var x = document.getElementById("t1").value;

    document.getElementById("t1").value = b;
    document.getElementById("t2").value = x; 
}