function affichage_tableau()
{
document.write("<center><table border= 2 width=30%; > ");
        for (i=0; i<=5; i++)
        {
            document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
        }
        document.write("</table></center>");
}


function affichage_tableau2(){
    var ligne = prompt("Donner le nombre de ligne à afficher:");
    document.write("<table border= 2 width=30%;> ");
        for (i=0; i<=ligne; i++)
        {
            document.write("<tr><td>"+i+"</td><td>*</td><td>*</td></tr>")
        }
        document.write("</table>");
}

function connexion(){
    var id= prompt("Donner votre nom d'utilisateur");
    var mdp= prompt("Entrer votre mot de passe:");
    if (id == 'admin' && mdp =="admin")
    {
        document.write("Bienvenue:  " + id);
    }
    else
    {
        alert("Accès refusé");
    }
}

function connexion2(){
    var i = 0;
    do {
        var id= prompt("Donner votre nom d'utilisateur");
        var mdp= prompt("Entrer votre mot de passe:");
        if (id == 'admin' && mdp =="admin"){
            document.write("Bienvenue:  " + id);
            break;
        }
        else
    
        alert("Accès refusé");

        i++ 

        } while (i<3);
    if (i == 3)
    alert("Délai dépassé");  
}  

function chaine_caractere(){
var chaine=prompt("Donner un mot")
document.write(chaine.toUpperCase()+"<br>");
document.write(chaine.toLowerCase()+"<br>");
document.write("la chaine contient  " + chaine.length+" caracteres" + "<br>");
document.write("la première lettre est " + chaine.substr(0,1)+"<br>");
}


function fun_switch(){
    var color= prompt("entrer une couleur")

    switch(color)
    {
        case "vert":document.body.style.background = "green";;
        break;
        case "VERT":document.body.style.background = "green";;
        break;
        case "BLEU":document.body.style.background = "blue";;
        break;
        case "bleu":document.body.style.background = "blue";;
        break;
            default:alert("couleur non définie");
    }
}

function bonusfunc(){
    var total = 0;
        do{
            article = prompt("Votre article");
            quantité = prompt("La quantité");
            prix = prompt("Le prix");
            res = Number(prix) * Number(quantité);
            total = total + res

            alert(" Votre total est de "+total+" "+"pour"+" "+article)

            var a = prompt("Avez-vous d'autre article ?")

        } while(a != "non");
        
            

}
