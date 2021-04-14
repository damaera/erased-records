const withTM = require("next-transpile-modules")([
  "bs-platform",
]);

module.exports = withTM({
  poweredByHeader: false
})
