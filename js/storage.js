// Claves
const KEY_USUARIOS = "app_usuarios";
const KEY_PRODUCTOS = "app_productos";

// Utilidad genérica
function readJSON(key, fallback) {
  try {
    const raw = localStorage.getItem(key);
    return raw ? JSON.parse(raw) : fallback;
  } catch { return fallback; }
}
function writeJSON(key, value) {
  localStorage.setItem(key, JSON.stringify(value));
}

// ---------- USUARIOS ----------
export function getUsuarios() {
  return readJSON(KEY_USUARIOS, []);
}
export function saveUsuarios(arr) {
  writeJSON(KEY_USUARIOS, arr);
}
export function upsertUsuario(usuario) {
  const usuarios = getUsuarios();
  const idx = usuarios.findIndex(u => u.run === usuario.run);
  if (idx >= 0) usuarios[idx] = usuario;
  else usuarios.push(usuario);
  saveUsuarios(usuarios);
}
export function deleteUsuario(run) {
  saveUsuarios(getUsuarios().filter(u => u.run !== run));
}

// ---------- PRODUCTOS ----------
export function getProductos() {
  return readJSON(KEY_PRODUCTOS, []);
}
export function saveProductos(arr) {
  writeJSON(KEY_PRODUCTOS, arr);
}
export function upsertProducto(prod) {
  const prods = getProductos();
  const idx = prods.findIndex(p => p.codigo === prod.codigo);
  if (idx >= 0) prods[idx] = prod;
  else prods.push(prod);
  saveProductos(prods);
}
export function deleteProducto(codigo) {
  saveProductos(getProductos().filter(p => p.codigo !== codigo));
}

// ---------- Seed opcional (una vez) ----------
export function seedIfEmpty() {
  if (getProductos().length === 0) {
    saveProductos([
      { codigo:"P001", nombre:"Camiseta Duoc", descripcion:"Algodón", precio:12000, stock:15, stockCritico:3, categoria:"Ropa", imagen:"" },
      { codigo:"P002", nombre:"Mochila Negra", descripcion:"Impermeable", precio:25000, stock:8, stockCritico:2, categoria:"Accesorios", imagen:"" }
    ]);
  }
  if (getUsuarios().length === 0) {
    saveUsuarios([
      { run:"19011022K", nombre:"Juan", apellidos:"Pérez Soto", correo:"juanperez@gmail.com", fecha:"", tipo:"Cliente", region:"Metropolitana", comuna:"Santiago", direccion:"Av. Siempre Viva 123" },
      { run:"18022133J", nombre:"María", apellidos:"González Rojas", correo:"maria@duoc.cl", fecha:"", tipo:"Administrador", region:"Valparaíso", comuna:"Viña del Mar", direccion:"Calle 1 234" }
    ]);
  }
}
