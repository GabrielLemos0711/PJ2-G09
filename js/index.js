function mostrar() {
  var b =  document.getElementById("btn");
  var i = document.getElementById("bot");
  var h1 = document.getElementById("h1");
  var h2 = document.getElementById("h2");
  var p1 = document.getElementById("p1");
  var p = document.getElementById("p");
  if (b.value == "escuro" ) {
      i.style.backgroundColor = "black";
      h2.style.color= 'white';
      h1.style.color= 'white';
      p1.style.color= 'white';
      p.style.color= 'white';
      b.value = "claro";

  }else{
     h2.style.color= 'black';
     h1.style.color= 'black';
      p1.style.color= 'black';
      p.style.color= 'black';
      i.style.backgroundColor = "white";
      b.value = "escuro";
  }
}
function showModal(idModal){ 
  //idModal é usado para avisar que há um parâmetro lá no html, o texto pode ser qualquer coisa para avisar que o parâmetro será um texto.
  const modal = document.querySelector(idModal)
  modal.style.display = "flex"
}

function hideModal(idModal, event) {
  if(event.target.className === 'modal'){
      const modal = document.querySelector(idModal)
      modal.style.display = 'none'
  }
}
//forçar o fechamento após receber a mensagem de alerta
function closeAllModal() {
  const modais = document.querySelectorAll('.modal')
  modais.forEach(modal => {
      modal.style.display = 'none'
  })
}
