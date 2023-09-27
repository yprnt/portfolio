document.addEventListener("DOMContentLoaded", function() {
  const form = document.querySelector(".qcm");
  const resultatLabel = document.getElementById("resultat");

  form.addEventListener("submit", function(event) {
      event.preventDefault(); // Empêche le formulaire de se soumettre

      // Définis les réponses correctes pour chaque question
      const reponsesCorrectes = {
          q1: ["h2o"],
          q2: ["vinci"],
          q3: ["pasteur","roux"],
          q4: ["paris"],
          q5: ["pacifique"],
          q6: ["shakespeare"],
          q7: ["yen"],
          q8: ["azote"],
          q9: ["steves", "ronald"],
          q10: ["edison"]
      };

      let score = 0; // Initialise le score

      // Parcours chaque question dans le formulaire
      for (let i = 1; i <= 10; i++) {
        const questionName = "q" + i;
        const checkboxes = document.querySelectorAll('input[name="' + questionName + '"]:checked');

        // Vérifie si les réponses sélectionnées sont correctes
        const reponsesSelectionnees = Array.from(checkboxes).map(checkbox => checkbox.value);
        const reponsesCorrectesQuestion = reponsesCorrectes[questionName];
        const isReponseCorrecte = JSON.stringify(reponsesSelectionnees.sort()) === JSON.stringify(reponsesCorrectesQuestion.sort());


        console.log(`Question ${i}:`);
        console.log(`Réponses sélectionnées: ${reponsesSelectionnees}`);
        console.log(`Réponses correctes: ${reponsesCorrectesQuestion}`);
        console.log(`Est-ce que la réponse est correcte ? ${isReponseCorrecte}`);


        // Incrémente le score si la réponse est correcte
        if (isReponseCorrecte) {
            score++;
        }
    }

    // Affiche le score
    resultatLabel.textContent = "Votre score : " + score + " / 10";
});
});