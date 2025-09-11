
(function () {
  var form      = document.getElementById('registroForm');
  var nombre    = document.getElementById('nombre');
  var apellidos = document.getElementById('apellidos');
  var correo    = document.getElementById('correo');
  var password  = document.getElementById('password');


  function clearInvalid(el) { el.classList.remove('is-invalid'); }
  function setInvalid(el)   { el.classList.add('is-invalid');   }

  // 3) Leer/guardar en localStorage
  function getUsuarios() {
    try {
      var raw = localStorage.getItem('app_usuarios');
      return raw ? JSON.parse(raw) : [];
    } catch (e) {
      return [];
    }
  }
  function saveUsuarios(arr) {
    localStorage.setItem('app_usuarios', JSON.stringify(arr));
  }

  // 4) Regla de correo permitido
  function correoPermitido(email) {
    var re = /^[\w.-]+@(duoc\.cl|profesor\.duoc\.cl|gmail\.com)$/i;
    return re.test(email);
  }

  // 5) Al enviar el formulario
  form.addEventListener('submit', function (e) {
    e.preventDefault();

    // Limpiar estados previos
    [nombre, apellidos, correo, password].forEach(clearInvalid);

    // Tomar valores
    var vNombre    = (nombre.value || '').trim();
    var vApellidos = (apellidos.value || '').trim();
    var vCorreo    = (correo.value || '').trim().toLowerCase();
    var vPass      = password.value || '';

    // Validaciones simples
    var ok = true;
    if (!vNombre || vNombre.length > 50)   { setInvalid(nombre);    ok = false; }
    if (!vApellidos || vApellidos.length > 100) { setInvalid(apellidos); ok = false; }
    if (!vCorreo || vCorreo.length > 100 || !correoPermitido(vCorreo)) { setInvalid(correo); ok = false; }
    if (vPass.length < 4 || vPass.length > 10) { setInvalid(password); ok = false; }

    if (!ok) return; // si algo no pasó, nos detenemos

    // Verificar correo duplicado
    var usuarios = getUsuarios();
    var existe = usuarios.some(function (u) {
      return (u.correo || '').toLowerCase() === vCorreo;
    });
    if (existe) {
      setInvalid(correo);
      alert('Ya existe una cuenta con ese correo.');
      return;
    }

    // Guardar usuario (básico)
    usuarios.push({
      nombre: vNombre,
      apellidos: vApellidos,
      correo: vCorreo,
      tipo: 'Cliente'
      // Nota: por simplicidad NO guardamos password aquí
    });
    saveUsuarios(usuarios);

    // Éxito
    alert('Cuenta creada con éxito ✅');
    window.location.href = 'login.html';
  });

  // 6) UX: quitar marca de error al escribir
  [nombre, apellidos, correo, password].forEach(function (el) {
    el.addEventListener('input', function () { clearInvalid(el); });
  });
})();
