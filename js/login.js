// Selección de elementos
const form = document.querySelector("form");
const emailInput = document.getElementById("email");
const passwordInput = document.getElementById("password");
//traemos los id de html


// Inicializar el modal de Bootstrap
const successModal = new bootstrap.Modal(document.getElementById("successModal"));

// Función para validar email
function validarEmail(email) {
    const regex = /^\S+@\S+\.\S+$/;
    return regex.test(email);
}

// Manejo del envío del formulario
form.addEventListener("submit", function(e) {
    e.preventDefault(); // Evita que se envíe automáticamente

    const email = emailInput.value.trim();
    const password = passwordInput.value.trim();

    // Validaciones
    if (email === "" || password === "") {
        alert("Todos los campos son obligatorios.");
        return;
    }

    if (!validarEmail(email)) {
        alert("Por favor, ingresa un correo válido.");
        return;
    }

    // Si pasa todas las validaciones, mostrar modal de éxito
    successModal.show();

    // Limpiar campos
    form.reset();
});
