const express = require('express')
const router = express.Router()

router.get('/', (req, res) => {
  console.log('Account route requested')
  res.send('Nice')
})

router.post('/', (req, res) => {
  console.log('Account route requested')
  res.send('Nice')
})

module.exports = router
