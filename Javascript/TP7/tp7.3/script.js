function Moyenne() {
    var note1 = document.getElementById("n1").value;
    var coef1 = document.getElementById("c1").value;

    var note2 = document.getElementById("n2").value;
    var coef2 = document.getElementById("c2").value;

    var note3 = document.getElementById("n3").value;
    var coef3 = document.getElementById("c3").value;

    var total = ((Number(note1)*Number(coef1)) + (Number(note2)*Number(coef2)) + (Number(note3)*Number(coef3))) / (Number(coef1) + Number(coef2) + Number(coef3));
    moy.value = total;

    if (total < 10) {
        resultat.value = "Redoublant"
    }
    else if (total <= 14) {
        resultat.value = "Admis Passable"
    }
    else {
        resultat.value = "Bien"
    }

}