// js/cart.js
// Estructura en localStorage: [{ codigo, qty }]

const CART_KEY = "app_cart";

function readJSON(key, fallback) {
  try {
    const raw = localStorage.getItem(key);
    return raw ? JSON.parse(raw) : fallback;
  } catch {
    return fallback;
  }
}
function writeJSON(key, val) {
  localStorage.setItem(key, JSON.stringify(val));
}

// ---- API pública ----
export function getCart() {
  return readJSON(CART_KEY, []);
}

export function saveCart(items) {
  writeJSON(CART_KEY, items);
}

export function clearCart() {
  writeJSON(CART_KEY, []);
}

export function addToCart(codigo, qty = 1) {
  const items = getCart();
  const i = items.findIndex(x => x.codigo === codigo);
  if (i >= 0) items[i].qty += qty;
  else items.push({ codigo, qty });
  saveCart(items);
}

export function removeFromCart(codigo) {
  saveCart(getCart().filter(x => x.codigo !== codigo));
}

export function setQty(codigo, qty) {
  const items = getCart();
  const i = items.findIndex(x => x.codigo === codigo);
  if (i < 0) return;
  if (qty <= 0) {
    // si qty <= 0, elimina
    items.splice(i, 1);
  } else {
    items[i].qty = qty;
  }
  saveCart(items);
}

// Devuelve items enriquecidos con info de producto y subtotales.
// getProductosFn debe devolver [{codigo, nombre, precio, stock, imagen, ...}]
export function getCartDetailed(getProductosFn) {
  const cart = getCart();
  const productos = getProductosFn ? getProductosFn() : [];
  const mapa = new Map(productos.map(p => [p.codigo, p]));
  const detallado = cart
    .map(it => {
      const p = mapa.get(it.codigo);
      if (!p) return null; // producto no existe
      const qty = Math.max(1, Math.min(Number.isInteger(it.qty) ? it.qty : 1, p.stock ?? 999999));
      const subtotal = (Number(p.precio) || 0) * qty;
      return { ...it, ...p, qty, subtotal };
    })
    .filter(Boolean);
  return detallado;
}

export function getTotals(getProductosFn) {
  const items = getCartDetailed(getProductosFn);
  const total = items.reduce((acc, it) => acc + it.subtotal, 0);
  const unidades = items.reduce((acc, it) => acc + it.qty, 0);
  return { total, unidades };
}
