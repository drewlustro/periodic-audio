/**
 * products/index.js
 * in-memory hash object for all products
 */

const productList = [
  require('./be'),
  require('./mg'),
  require('./ti'),
]

const products = {}
for (const p of productList) {
  products[p.slug] = p
}

module.exports = products
