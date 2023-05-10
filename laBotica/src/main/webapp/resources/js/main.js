 function mostrarCampos() {
			var seleccion = document.getElementById("tipo_usuario").value;
			var campos_cliente = document.getElementById("campos_cliente");
			var campos_administrativo = document.getElementById("campos_administrativo");
			if (seleccion == "cliente") {
				campos_cliente.style.display = "block";
				campos_administrativo.style.display = "none";
			} else if (seleccion == "administrativo") {
				campos_cliente.style.display = "none";
				campos_administrativo.style.display = "block";
			} else {
				campos_cliente.style.display = "none";
				campos_administrativo.style.display = "none";
			}
		}

document.addEventListener('DOMContentLoaded', () => {
    const baseDeDatos = [
        {
            id: 1,
            nombre: 'Tula',
            precio: 700,
            imagen: 'img/tula.jfif'
        },
        {
            id: 2,
            nombre: 'Fruna',
            precio: 400,
            imagen: 'img/fruna.jfif'
        },
        {
            id: 3,
            nombre: 'Kombu',
            precio: 900,
            imagen: 'img/kombucha.jfif'
        },
      ];

    let carrito = [];
    const divisa = '$';
    const DOMitems = document.querySelector('#items');
    const DOMcarrito = document.querySelector('#carrito');
    const DOMtotal = document.querySelector('#total');
    const DOMbotonVaciar = document.querySelector('#boton-vaciar');

      /**
      * Dibuja todos los productos a partir de la base de datos. No confundir con el carrito
      */
      function renderizarProductos() {
          baseDeDatos.forEach((info) => {
              // Estructura
              const miNodo = document.createElement('div');
              miNodo.classList.add('card', 'col-sm-4');
              // Body
              const miNodoCardBody = document.createElement('div');
              miNodoCardBody.classList.add('card-body');
              // Titulo
              const miNodoTitle = document.createElement('h5');
              miNodoTitle.classList.add('card-title');
              miNodoTitle.textContent = info.nombre;
              // Imagen
              const miNodoImagen = document.createElement('img');
              miNodoImagen.classList.add('img-fluid');
              miNodoImagen.setAttribute('src', info.imagen);
              // Precio
              const miNodoPrecio = document.createElement('p');
              miNodoPrecio.classList.add('card-text');
              miNodoPrecio.textContent = `${divisa}${info.precio}`;
              // Boton 
              const miNodoBoton = document.createElement('button');
              miNodoBoton.classList.add('btn', 'btn-primary');
              miNodoBoton.textContent = '+';
              miNodoBoton.setAttribute('marcador', info.id);
              miNodoBoton.addEventListener('click', anyadirProductoAlCarrito);
              // Insertamos
              miNodoCardBody.appendChild(miNodoImagen);
              miNodoCardBody.appendChild(miNodoTitle);
              miNodoCardBody.appendChild(miNodoPrecio);
              miNodoCardBody.appendChild(miNodoBoton);
              miNodo.appendChild(miNodoCardBody);
              DOMitems.appendChild(miNodo);
          });
      }

      /**
      * Evento para añadir un producto al carrito de la compra
      */
      function anyadirProductoAlCarrito(evento) {
          // Anyadimos el Nodo a nuestro carrito
          carrito.push(evento.target.getAttribute('marcador'))
          // Actualizamos el carrito 
          renderizarCarrito();

      }

      /**
      * Dibuja todos los productos guardados en el carrito
      */
      function renderizarCarrito() {
          // Vaciamos todo el html
          DOMcarrito.textContent = '';
          // Quitamos los duplicados
          const carritoSinDuplicados = [...new Set(carrito)];
          // Generamos los Nodos a partir de carrito
          carritoSinDuplicados.forEach((item) => {
              // Obtenemos el item que necesitamos de la variable base de datos
              const miItem = baseDeDatos.filter((itemBaseDatos) => {
                  // ¿Coincide las id? Solo puede existir un caso
                  return itemBaseDatos.id === parseInt(item);
              });
              // Cuenta el número de veces que se repite el producto
              const numeroUnidadesItem = carrito.reduce((total, itemId) => {
                  // ¿Coincide las id? Incremento el contador, en caso contrario no mantengo
                  return itemId === item ? total += 1 : total;
              }, 0);
              // Creamos el nodo del item del carrito
              const miNodo = document.createElement('li');
              miNodo.classList.add('list-group-item', 'text-right', 'mx-2');
              miNodo.textContent = `${numeroUnidadesItem} x ${miItem[0].nombre} - ${divisa} ${miItem[0].precio}`;
              // Boton de borrar
              const miBoton = document.createElement('button');
              miBoton.classList.add('btn', 'btn-danger', 'mx-5');
              miBoton.textContent = 'X';
              miBoton.style.marginLeft = '1rem';
              miBoton.dataset.item = item;
              miBoton.addEventListener('click', borrarItemCarrito);
              // Mezclamos nodos
              miNodo.appendChild(miBoton);
              DOMcarrito.appendChild(miNodo);
          });
         // Renderizamos el precio total en el HTML
         DOMtotal.textContent = calcularTotal();
      }

      /**
      * Evento para borrar un elemento del carrito
      */
      function borrarItemCarrito(evento) {
          // Obtenemos el producto ID que hay en el boton pulsado
          const id = evento.target.dataset.item;
          // Borramos todos los productos
          carrito = carrito.filter((carritoId) => {
              return carritoId !== id;
          });
          // volvemos a renderizar
          renderizarCarrito();
      }

      /**
       * Calcula el precio total teniendo en cuenta los productos repetidos
       */
      function calcularTotal() {
          // Recorremos el array del carrito 
          return carrito.reduce((total, item) => {
              // De cada elemento obtenemos su precio
              const miItem = baseDeDatos.filter((itemBaseDatos) => {
                  return itemBaseDatos.id === parseInt(item);
              });
              // Los sumamos al total
              return total + miItem[0].precio;
          }, 0).toFixed(2);
      }

      /**
      * Varia el carrito y vuelve a dibujarlo
      */
      function vaciarCarrito() {
          // Limpiamos los productos guardados
          carrito = [];
          // Renderizamos los cambios
          renderizarCarrito();
      }

      // Eventos
      DOMbotonVaciar.addEventListener('click', vaciarCarrito);

      // Inicio
      renderizarProductos();
      renderizarCarrito();
    });

    let map;
    function initMap(){
        map= new google.maps.Map(document.getElementById("map"), {
            center:{
                lat: -34,
                lng: 150
            },
            zoom: 8
        });
    }


    var actual=new Date();
function mostrarCalendario(year,month)
{
	var now=new Date(year,month-1,1);
	var last=new Date(year,month,0);
	var primerDiaSemana=(now.getDay()==0)?7:now.getDay();
	var ultimoDiaMes=last.getDate();
	var dia=0;
	var resultado="<tr bgcolor='silver'>";
	var diaActual=0;
	console.log(ultimoDiaMes);
 
	var last_cell=primerDiaSemana+ultimoDiaMes;
 
	// hacemos un bucle hasta 42, que es el máximo de valores que puede
	// haber... 6 columnas de 7 dias
	for(var i=1;i<=42;i++)
	{
		if(i==primerDiaSemana)
		{
			// determinamos en que dia empieza
			dia=1;
		}
		if(i<primerDiaSemana || i>=last_cell)
		{
			// celda vacia
			resultado+="<td>&nbsp;</td>";
		}else{
			// mostramos el dia
			if(dia==actual.getDate() && month==actual.getMonth()+1 && year==actual.getFullYear())
				resultado+="<td class='hoy'>"+dia+"</td>";
			else
				resultado+="<td>"+dia+"</td>";
			dia++;
		}
		if(i%7==0)
		{
			if(dia>ultimoDiaMes)
				break;
			resultado+="</tr><tr>\n";
		}
	}
	resultado+="</tr>";
 
	var meses=Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
 
	// Calculamos el siguiente mes y año
	nextMonth=month+1;
	nextYear=year;
	if(month+1>12)
	{
		nextMonth=1;
		nextYear=year+1;
	}
 
	// Calculamos el anterior mes y año
	prevMonth=month-1;
	prevYear=year;
	if(month-1<1)
	{
		prevMonth=12;
		prevYear=year-1;
	}
 
	document.getElementById("calendar").getElementsByTagName("caption")[0].innerHTML="<div>"+meses[month-1]+" / "+year+"</div><div><a onclick='mostrarCalendario("+prevYear+","+prevMonth+")'>&lt;</a> <a onclick='mostrarCalendario("+nextYear+","+nextMonth+")'>&gt;</a></div>";
	document.getElementById("calendar").getElementsByTagName("tbody")[0].innerHTML=resultado;
}
 
mostrarCalendario(actual.getFullYear(),actual.getMonth()+1);




function muestraReloj() {
   
    var fechaHora = new Date();
    var horas = fechaHora.getHours();
    var minutos = fechaHora.getMinutes();
    var segundos = fechaHora.getSeconds();
    var day = (fechaHora.getDate());
 

    if(horas < 10) { horas = '0' + horas; }
    if(minutos < 10) { minutos = '0' + minutos; }
    if(segundos < 10) { segundos = '0' + segundos; }


    document.getElementById("reloj").innerHTML = horas+':'+minutos+':'+segundos;
  }

    window.onload = function() {
    setInterval(muestraReloj, 1000);
  }