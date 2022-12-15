function addition (){
    var a = document.getElementById('t1').value;
    var b = document.getElementById('t2').value;
    var c = document.getElementById('resultat').value;
    resultat.innerText = Number(t1.value) + Number(t2.value);

}
 function soustraction (){
     var a = document.getElementById('t1').value;
     var b = document.getElementById('t2').value;
     var c = document.getElementById('resultat').value;
     resultat.innerText = Number(t1.value) - Number(t2.value);

 }
 function multiplication (){
      var a = document.getElementById('t1').value;
      var b = document.getElementById('t2').value;
      var c = document.getElementById('resultat').value;
     resultat.innerText = Number(t1.value) * Number(t2.value);

 }
function division (){
      var a = document.getElementById('t1').value;
      var b = document.getElementById('t2').value;
      var c = document.getElementById('resultat').value;
      resultat.innerText = Number(t1.value) / Number(t2.value);

  }
function parité() {
    var a = document.getElementById('t1').value;
    var b = document.getElementById('t2').value;
    var c = document.getElementById('resultat').value;
    if ((Number(t1.value) + Number(t2.value)) % 2 == 0) {
        resultat.innerText = "votre calcule est paire";
    }
    else {
        resultat.innerText = "votre calcule est inpaire";
   

    }
}
 function permuté (){
      var a = document.getElementById('t1').value;
     var b = document.getElementById('t1').value = document.getElementById('t2').value;
      var c = document.getElementById('t2').value = a;
     resultat.innerText = Number(t1.value) - Number(t2.value)
     

}
  