# output
console.log "Test"
# string interpolation
let msg = "CTS"

console.log "hello, {msg}"

let number = 42
const myList = [1,2,3]
const myBool = true
const alsoBool = no

if alsoBool === false then console.log "true" elif alsoBool then console.log "not true"

const object = {name: "imba", type: "full-stack language"}

const alsoObject = name: 'imba', type: 'language' # optionally omit curly brackets
# const alsoObject = {name: 'imba', type: 'language'};

console.log alsoObject

const indentedObject = # Optionally skip the commas for indented objects
	name: 'Imba'
	version: 2.0
	repository: 'https://github.com/imba/imba'
	inspiration: ['ruby','python','react','coffeescript']
# const indentedObject = {name: 'Imba', version: 2.0, repository: 'https://github.com/imba/imba',...}

console.log indentedObject

# not a part of javascript, but Imba's own types

const duration = 150ms # compiles to 150
const longerDuration =  42s # compiles to (42 * 1000)

console.log "{duration} {longerDuration}"

const element = <div.large.header> "Welcome"

# conditionals

const max = 20
let amount = 12

if amount > max then console.log "too much!" else console.log "good amount"

if amount > max then console.log "too much!2" elif amount == max then console.log "just right2" else console.log "add more2"

console.log "too much3" if amount < max

console.log "limit exceeded4" unless amount < max

let conditionOne
let conditionTwo
let partInStock

def askCustomerToWait() do console.log "please wait"

def doRepair() do console.log "a function"

if (conditionOne or conditionTwo) and (partInStock) then doRepair()
	else then askCustomerToWait()

