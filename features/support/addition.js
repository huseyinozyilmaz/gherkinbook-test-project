const {Given,When,Then} = require('cucumber')
const assert = require('assert')
const sleep = require('sleep')

let answer

Given('I have a Calculator', function () {
  answer = 0
})

Given('I start with {int}', function (int) {
  answer = int
  sleep.msleep(100)
})

When('I add {int}', function (int) {
  answer = answer + int
  sleep.msleep(200)
})

When('I add the following numbers:', function (dataTable) {
  answer = dataTable.raw()
    .map(row => row[0])
    .map(v => parseInt(v))
    .reduce((current, next) => current + next, answer)
  sleep.msleep(500)
})

Then('the sum should be {int}', function (int) {
  assert(answer, int)
  sleep.msleep(100)
})
