module.exports = {
  extends: [
    // add more generic rulesets here, such as:
    // 'eslint:recommended',
    'plugin:vue/essential'
  ],
  'plugins': [
    'html', 'vue'
  ],
  'settings': {
    'html/html-extensions': [
      '.html',
      '.vue'
    ]
  },
  rules: {
    // override/add rules settings here, such as:
    // 'vue/no-unused-vars': 'error'
  }
}
