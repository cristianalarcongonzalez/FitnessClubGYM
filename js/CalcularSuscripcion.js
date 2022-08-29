function CalcularSuscripcion(value){
  if(value !== "Seleccione la suscripción")
    document.getElementById("SubTotal").value = value;

  else
    document.getElementById("SubTotal").value= '';

  if(value == "Rutina")
    document.getElementById("SubTotal").value= 3000;

  if(value == "Mensualidad")
    document.getElementById("SubTotal").value= 45000;

}


const formularioUI = document.querySelector('#formulario');
function CalcularTotal(SubTotal, Cantidad, Total) {
  var Total = 0;
  Total = parseFloat(SubTotal) * parseFloat(Cantidad);
  document.getElementById("Total").value = Total;
  console.log(Total);
  return Total;
}


function ArmarJSON() {

  var SubTotal = document.getElementById("SubTotal").value;
  var Cantidad = document.getElementById("Cantidad").value;
  var Total=CalcularTotal(SubTotal, Cantidad, Total);
  console.log(Total);

  var json = {
    "SubTotal":SubTotal,
    "Cantidad":Cantidad,
    "Total":Total
  }
  return json;

}

function CalcularTotalPagar(json) {
  let tot = [];
  var totgym = ArmarJSON();

}

