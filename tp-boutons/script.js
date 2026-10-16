function direBonjour() {
    document.getElementById("message").textContent = "Bonjour ! Bienvenue sur ma page.";
}
function afficherDate() {
    var maintenant = new Date();
    var texte = "Nous sommes le " + maintenant.toLocaleDateString("fr-FR") +
                " et il est " + maintenant.toLocaleTimeString("fr-FR") + ".";
    document.getElementById("message").textContent = texte;
}
function changerCouleur() {
    var couleurs = ["#ffeaa7", "#fab1a0", "#81ecec", "#a29bfe", "#b2f2bb"];
    var indice = Math.floor(Math.random() * couleurs.length);
    document.body.style.backgroundColor = couleurs[indice];
    document.getElementById("message").textContent = "Nouvelle couleur de fond : " + couleurs[indice];
}
function nombreAleatoire() {
    var nombre = Math.floor(Math.random() * 100) + 1;
    document.getElementById("message").textContent = "Votre nombre aléatoire est : " + nombre;
}
function effacer() {
    document.getElementById("message").textContent = "";
}
function verif_age() {
	let n1 = prompt("Donnez votre âge : ")
 
	if (n1 < 18) {
        document.write("Vous êtes mineur")
  document.body.style.backgroundColor = "red"
	}
	else {
        document.write("Vous êtes majeur")
    	document.body.style.backgroundColor = "green"
	}
}
function calculateurMoyenne() {
    let n1 = Number(prompt("Donnez 3 notes pour calculer votre moyenne, 1er Nombre"));
    let n2 = Number(prompt("2eme nombre"));
    let n3 = Number(prompt("3eme nombre"));

    let Somme = n1 + n2 + n3;
    let resultat = Somme / 3;


    document.getElementById("message").textContent = "Votre moyenne est : " + resultat + "Votre somme est : " + Somme;
}