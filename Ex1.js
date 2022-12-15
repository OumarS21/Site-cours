function calMoyenne(){
    const note1= prompt('saisir une note : ');
    const note2= prompt('saisir une autre note : ');
    const note3= prompt('saisir encore une autre note : ');
    const somme = Number(note1)+Number(note2)+Number(note3);
    const moyenne = somme/3;

    document.write("La somme: " + somme + "<br>");
    document.write("La moyenne: " + moyenne + "<br>");
    
    if (moyenne < 10){
        document.write("Redoublant");
        document.body.style.background = "red";
    } 
    else
    {
        document.write("Admis");
        document.body.style.background = "green";
    }
}

function affichage(){
const nom = prompt("votre nom")
const prénom = prompt("votre nom")

document.write( "<div style='margin:auto'; width:300px; border: 1px solid blue;")

}

function testCouleur(){

}

 
function testAge(){
    const age = prompt("Votre age : ")
    if (age < 18){
        document.write("Vous etes mineur");
        document.body.style.background = "red";
    } 
    else
    {
        document.write("Vous etes majeur");
        document.body.style.background = "green";
    }
}