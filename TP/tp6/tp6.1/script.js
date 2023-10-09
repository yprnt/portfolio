function calcul_moyenne() {
    var n1 = prompt("Donner la première note :");
    var n2 = prompt("Donner la deuxième note :");
    var n3 = prompt("Donner la troisième note :");

    var somme = Number(n1) + Number(n2) + Number(n3);

    document.write("Voici la somme : " + somme + "<br>");
    var moyenne = somme/3;

    document.write("Voici la moyenne : " + moyenne + "<br>");

    if (moyenne < 10) {
        document.write("Vous n'êtes pas admis");
    }
    else {
        document.write("Vous êtes admis");
    }
}


function test_age() {
    let age = prompt("Quelle est votre âge ?");
    if (age < 18) {
        document.write("Vous êtes mineur");
        document.bgColor="red"
    }
    else {
        document.write("Vous êtes majeur");
        document.bgColor="green"
    }
}

function simple_affichage() {
    let name = prompt("Donner votre nom");
    let prenom = prompt("Donner votre prénom");

    document.write('<div style="margin:auto; width:300px; border:2px solid blue;">');
    document.write('Bonjour ' + prenom + " " + name);
    document.write('</div>');

}

function test_couleur() {
    let couleur = prompt("Donner un couleur")
    if (couleur == "rouge" || couleur == "red" || couleur == "Rouge" || couleur == "Red") {
        document.body.style.backgroundColor = "red"

    }
    else if (couleur == "bleu" || couleur == "Bleue" || couleur == "Blue" || couleur == "blue") {
        document.body.style.backgroundColor = "blue"
    }
    else if (couleur == "vert" || couleur == "Vert" || couleur == "green" || couleur == "Green") {
        document.body.style.backgroundColor = "green"
    }
    else if (couleur == "rose" || couleur == "Rose" || couleur == "pink" || couleur == "Pink") {
        document.body.style.backgroundColor = "pink"
    }
    else {
        document.write("Couleur non comprise")
    }
}