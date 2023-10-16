function Calculer() {
    //Article 1 - Remise 5%
    var quantite = document.getElementById("q1").value;
    var prix = document.getElementById("p1").value;

    var remise = (Number(quantite) * Number(prix)) * 0.05;
    document.getElementById("r1").value = remise;

    //Article 2 - Remise 5%
    var quantite2 = document.getElementById("q2").value;
    var prix2 = document.getElementById("p2").value;

    var remise2 = (Number(quantite2) * Number(prix2)) * 0.05;
    document.getElementById("r2").value = remise2;

    // Article 1 - Net
    var net = (Number(quantite) * Number(prix)) - Number(remise);
    document.getElementById("n1").value = net;

    //Article 2 - Net
    var net2 = (Number(quantite2) * Number(prix2)) - Number(remise2);
    document.getElementById("n2").value = net2;


    //Total 
    var total = Number(net) + Number(net2);
    document.getElementById("t").value = total;
}