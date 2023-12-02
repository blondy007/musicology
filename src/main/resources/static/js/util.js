
/*    <script>
// Obtén el botón para abrir la ventana modal
var openModalBtn = document.getElementById("openModalBtn");

// Obtén la ventana modal
var modal = document.getElementById("modal");

// Obtén el botón para cerrar la ventana modal
var closeBtn = modal.querySelector(".close");

// Cuando se haga clic en el botón para abrir la ventana modal, muestra la ventana modal
openModalBtn.addEventListener("click", function() {
  modal.style.display = "block";
});

// Cuando se haga clic en el botón para cerrar la ventana modal, oculta la ventana modal
closeBtn.addEventListener("click", function() {
  modal.style.display = "none";
});

// Cuando el usuario haga clic fuera de la ventana modal, también oculta la ventana modal
window.addEventListener("click", function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
});

// Get the modal
const modal = document.getElementById("myModal");

// Get the <span> element that closes the modal
const span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function openModal(id, nombre, descripcion) {
    // Obtén la ventana modal
    const modal = document.getElementById("myModal");

    // Actualiza el contenido de la ventana modal con los valores del registro
    const modalTitle = modal.querySelector(".modal-title");
    modalTitle.textContent = nombre;

    const modalBody = modal.querySelector(".modal-body");
    modalBody.innerHTML = `
        <p>ID: ${id}</p>
        <p>Nombre: ${nombre}</p>
        <p>Descripción: ${descripcion}</p>
    `;

    // Abre la ventana modal
    modal.style.display = "block";
}

//        $(document).ready(function () {
//            $(".btn-editar").click(function () {
//                var url = $(this).attr('href');
//                jQuery.get(url, function (data) {
//                    $("#modal-content").html(data);
//                    $("#modal").modal();
//                });
//                return false;
//            });
//        });


    </script>
*/
