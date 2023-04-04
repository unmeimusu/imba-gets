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
let amount = 14
# one line is more readable but I encountered some issue sometimes not auto reload,
# especially while using then/do.
if amount > max then console.log "too much!0" else console.log "good amount0"

if amount > max then console.log "too much!2" elif amount == max then console.log "just right2" else console.log "add more2"

console.log "too much3" if amount < max

console.log "limit exceeded4" unless amount < max

let conditionOne
let conditionTwo
let partInStock

def askCustomerToWait() 
	console.log "please wait"

def doRepair()
	console.log "a function"
doRepair()

if (conditionOne or conditionTwo) and (partInStock)
	doRepair()
else
	askCustomerToWait()

# ternary
console.log amount > max ? 'too much (ternary)' : 'not enough (ternary)'

# single line if/then/else
console.log if amount > max then 'too much (one line elseif)' else 'not enough (one line elseif)'

# functions

def func(a,b)
	return console.log a * b
func(4,3)

def alsoFunc(a,b)
	a * b # implicit return

const smallerFunc = do(a,b) a * b # implicit return on one line
console.log smallerFunc(2,5)

const single = 'single quotes'
const double = "double quotes"
const interpolation = "string has {double}"
# Interpolating using obj above
const template = `this template using current version is {indentedObject.version}` 
console.log template
# multiple lines, line breaks are ignored
const multipleLines = 'one 
two three'
console.log multipleLines
# using  '''/""" to spans several lines includes line breaks
const lineBreaks = '''
This string is written
over multiple lines
'''
console.log lineBreaks
const stringIndentation = '''
	First level indent is ignored
		This is indented
	Not indented
'''
console.log stringIndentation

const person = 'Mike'
const age = 28

# template literal
def myTag(strings,personExp,ageExp)
	const str0 = strings[0] # "That "
	const str1 = strings[1] # " is a "
	const str2 = strings[2] # "."

	const ageStr = (ageExp > 99) ? "centenarian" : "youngster"

	# we can even return a string built using a template literal
	"{str0}{personExp}{str1}{ageStr}{str2}"
# works only with curly quotes
const output = myTag`That {person} is a {age}.`

console.log output

# Arrays
const withCommas = [
	'one',
	'two',
	'three',
	'four'
]
# same result
const withoutCommas = [
	'onewo'
	'twowo'
	'threewo'
	'fouro'
]

console.log withCommas, withoutCommas

# Objects
const object2 = { a: 'foo', b: 42, c: {}}
const person2 =
	name: 'Bob Smith'
	age: 32
	gender: 'male'
# Curly braces are optional as the keys and values are clear
def logObject(object)
	console.log "Logging: ", object
logObject(name: 'Harley', profession: 'Actor')
# example with dashes for array of objects
let todos = [
	title: 'one'
	completed: yes
	-
	title: 'two'
	completed: no
]
console.log todos
# dynamically set property name using a variable
const field = 'age'
const person3 = {
	[field]: 32 # dynamic property name
	name: 'Smith'
}
console.log 'Smith\'s age is',person3.age

# keys work the same way as in js
const person4 = { name: 'Bob', age: 32, gender: "male" }
console.log person4['name']
person4['age'] = 33
console.log person4.age

# variables as properties of an object
const a = 'foo'
const b = 44
const c = {}
const object5 = {a,b,c}
console.log object5