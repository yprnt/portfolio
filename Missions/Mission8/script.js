function fonction1() {
    let test = prompt("Merci d'inscrire une chaine de caractère");
    document.body.innerHTML = test;
}

function fonction2() {
    let a = 42;
    let b = 7569;
    let result = a + b;
    alert(result);
}

function fonction3() {
    let note_maths = 11;
    let note_francais = 9;
    let note_hg = 16;
    let moyenne = (note_maths + note_francais + note_hg) / 3;
    alert('La moyenne est de ' + moyenne);
}

function fonction4() {
    let budget = 1553.89;
    let achats = 1554.76;
    if(budget >= achats) {
        alert('Le budget (' + budget + ' €) permet de payer tous les achats (' + achats + ' €)');
    } 
    else {
        alert('Le budget (' + budget + ' €) ne permet pas de payer tous les achats (' + achats + ' €)');
    }
}

function fonction5() {
    let ht = prompt("Montant HT ?");
    let ttc = ht * 1.2;
    document.body.innerText = ttc;
}

function fonction6() {
    let ht = prompt("Montant HT ?");
    let taux_tva = prompt("Taux de TVA ?");
    let taux_tva_calcul = (taux_tva / 100) + 1;
    let ttc = ht * taux_tva_calcul;
    document.body.innerText = ttc;
}

function fonction7() {
    let ht = prompt("Montant HT ?");
    let taux_tva = prompt("Taux de TVA ?");
    let ttc = ht * (taux_tva / 100) + 1;
    if(ttc > 100) {
        document.body.innerHTML = '<h1 style="color: red;">' + ttc + '</h1>';
    } 
    else {
        document.body.innerHTML = '<h1 style="color: green;">' + ttc + '</h1>';
    }
}

function fonction8redirect() {
    window.location.href="fonction8.html"
}

function fonction8() {
    document.getElementById('cocktail').innerText = 'Long Island Iced Tea';
}

function fonction9() {
    for(let i = 10;i <= 1000;i+=10) {
        console.log(i);
    }
    alert("Voir la console");
}

function fonction10() {
    let age = prompt("Quel est votre âge ?");
    if(age >= 18) {
        alert('Vous êtes majeur !');
    } 
    else {
        alert('Vous êtes mineur !');
    }
}

function fonction11() {
    let cp = 77000;
    while(cp <= 77999) {
        console.log(cp);
        cp++;
    }
    alert("Voir la console")
}

function fonction12() {
    let n = 5;
    let html = '';
    for(let i = 1;i <= 10;i++) {
        html = html + n + ' x ' + i + ' = ' + (n * i) + ' <br />';
    }
    document.body.innerHTML = html;
}

function fonction13() {
    let html = '';
    for(let i = 1;i <= 5;i++) {
        for(let k = 1;k <= i;k++) {
            html = html + i;
        }
        html = html + '<br />';
    }
    document.body.innerHTML = html;
}

function fonction14() {
    let html = '';
    let k = 0;

    while(k <= 20) {
        html = html + k + '<br />';
        k = k + 2;
    }
    document.body.innerHTML = html; 
}

function fonction15() {
    let tableau = '<table>';
    let lignes = 5;
    let colonnes = 3;

    for(let i = 1;i <= lignes;i++) {
        tableau = tableau + '<tr>';
        for(let k = 1;k <= colonnes;k++) {
            tableau = tableau + '<td>yolo</td>';
        }
        tableau = tableau + '</tr>';
    }
    tableau = tableau + '</table>';
    document.body.innerHTML = tableau;
}

function fonction16() {
    let lignes = prompt("Nombre de lignes ?");
    let colonnes = prompt("Nombre de colonnes ?");
    let tableau = '<table>';
    
    for(let i = 1;i <= lignes;i++) {
       tableau = tableau + '<tr>';
       for(let k = 1;k <= colonnes;k++) {
          tableau = tableau + '<td>yolo</td>';
       }
       tableau = tableau + '</tr>';
    }
    tableau = tableau + '</table>';
    document.body.innerHTML = tableau;
}

function fonction17() {
    let html = '<ul>';
    let nalea = 10;
    for(let i = 0;i < nalea;i++) {
        html = html + '<li>' + Math.floor(Math.random() * 100) + '</li>';
    }
    html = html + '</ul>';
    document.body.innerHTML = html;
}

function fonction18() {
    let html = '<ul>';
    let nalea = 10;
    for(let i = 0;i < nalea;i++) {
        let tmp = Math.floor(Math.random() * 11);
        if(tmp == 10) {
            console.log('Le nombre 10 fait parti du tirage.');
        }
        html = html + '<li>' + tmp + '</li>';
    }
    html = html + '</ul>';
    document.body.innerHTML = html;
}

function fonction19() {
    let r = Math.floor(Math.random() * 256);
    let g = Math.floor(Math.random() * 256);
    let b = Math.floor(Math.random() * 256);
    let color = "rgb(" + r + ", " + g + ", " + b + ")";
    document.body.style.background = color;
}

function fonction20() {
    window.location.href="analyse.html"
}

function rechercherCaractere() {
    var chaine = document.getElementById("chaine").value;
    var caractere = document.getElementById("caractere").value;

    if (chaine.length < 0 || caractere.length != 1) {
        alert("Veuillez entrer une suite de caractères et un unique caractère.");
    } 
    else {
        var chaineMajuscule = chaine.toUpperCase();
        var occurrence = 0;

        for(var i = 0; i < chaine.length; i++) {
            if(chaine[i] == caractere) {
                occurrence ++
            }
        }

        alert("Longueur de la chaine de caractères : " + chaine.length +
            "\nChaine en majuscule : " + chaineMajuscule +
            "\nNombre d'occurrences du caractère : " + occurrence);
    }
}

function rechercherChaine() {
    var chaine = document.getElementById("chaine").value;
    var chaine2 = document.getElementById("chaine2").value;

    if (chaine.length < 1 || chaine2.length < 2) {
        alert("Veuillez entrer une suite de caractères dans les deux endroits prévus.")
    }
    else {
        var occurrence = 0;

        for(var i = 0; i < chaine.length; i++) {
            if(chaine.substring(i, i + chaine2.length) == chaine2) {
                occurrence++;
            }
        }

        alert("La chaine " + chaine2 + " se trouve " + occurrence + " fois dans la chaine " + chaine);
    }
}