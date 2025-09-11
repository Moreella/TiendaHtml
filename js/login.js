
const form = document.getElementById("loginForm");
const email = document.getElementById("email");
const password = document.getElementById("password");

const domainRegex = /^[\w.-]+@(duoc\.cl|profesor\.duoc\.cl|gmail\.com)$/;

function setInvalid(input, msgEl, message) {
  input.classList.add("is-invalid");
  if (msgEl) msgEl.textContent = message;
}
function clearInvalid(input) {
  input.classList.remove("is-invalid");
}

form.addEventListener("submit", (e) => {
  e.preventDefault();

  // Limpiar estado previo
  clearInvalid(email);
  clearInvalid(password);

  let valid = true;

  const emailVal = email.value.trim();
  const passVal = password.value;

  // Validación email
  if (!emailVal || emailVal.length > 100 || !domainRegex.test(emailVal)) {
    setInvalid(email, document.getElementById("emailError"),
      "Correo inválido. Usa @duoc.cl, @profesor.duoc.cl o @gmail.com (máx. 100).");
    valid = false;
  }

  // Validación password
  if (!passVal || passVal.length < 4 || passVal.length > 10) {
    setInvalid(password, document.getElementById("passwordError"),
      "La contraseña debe tener entre 4 y 10 caracteres.");
    valid = false;
  }

  if (!valid) return;
  const modalEl = document.getElementById("successModal");
  const modal = new bootstrap.Modal(modalEl);
  modal.show();

  modalEl.addEventListener("hidden.bs.modal", () => {
    // Redirige al home o a cuenta
    window.location.href = "index.html";
  }, { once: true });
});

// UX: limpiar error al escribir
[email, password].forEach(inp => {
  inp.addEventListener("input", () => clearInvalid(inp));
});
