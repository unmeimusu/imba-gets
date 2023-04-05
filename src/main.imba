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

# methods by skipping parenthesis
def withArgument param
	console.log param

withArgument "With an argument" + 43
# can use ! to replace any parenthesis ()
def withDefaultVal param = 21
	console.log param
withDefaultVal!

# object can be destuctured and given default values as in js
def buildCharacter name, {title, desc = 'indescribable'}
	"{name},{title},{desc}"

console.log buildCharacter('Frent',{title: 'Adventurer'})


class Todo
	# Properties are member variables:
	title
	completed = no
	due = null

	# Metjods are instance level function
	def complete
		completed = yes
	
	# Getters
	get overdue
		due and due < new Date

	# Static methods are class level functions
	static def createTodos titles
		titles.map do(title)
			new Todo(title: title)
# Add a to do title with initialized class members
const todo = new Todo title: 'Read instruction'

console.log todo
# Insert to do list
const newTodos = Todo.createTodos ['Learn Imba','Eat Breakfast']
console.log newTodos

# Loop & Iteration on array object
const newTodos2 = Todo.createTodos ['Learn Imba','Eat breakfast']
console.log newTodos2
for todo, index of newTodos2
	console.log "{todo.title} at position {index}"
# object "for own" key and value
const object6 = 
	hello: 'world'
	learning: 'imba'
	answer: 42
for own key, value of object
	console.log "{key} {value}"
# regular expression with whitespace and comments in multi line regexes
const literal = /ab+c/i
const regex = new RegExp('ab+c','i')
const multiline = ///
	ab+
	c
///
console.log multiline,regex,literal

# ranges in array alternative myarray.length
const item = []
for i in [1...5] # from 1 to limit 5
	item.push(i)
console.log item

# Elements
const list = <ul title="reminders">
	<li> "Remember drink"
	<li> "Keep smiling"

imba.mount list

# Elements with CSS classes
const state = 'open'
const condition = yes

const list2 = <div>
	<div.panel.large> "With classes"
	<div.state-{state}> "Dynamic class name"
	<div.hidden=condition> "Conditionally hidden"
	<div.panel.state-{state} .hidden=condition> "Dynamic and conditional"

imba.mount list2

# Elements with handlers and CSS
global css .panel inset:100px rd:lg d:flex ja:center bgc:amber1 cursor:pointer user-select:none
const handler = do(event)
	console.log "Panel clicked!"
imba.mount <div.panel @click.prevent=handler> "Panel"

import {todos3} from './data'

tag todo-item
	<self .completed=data.completed>
		<input bind=data.completed type="checkbox">
		<span.title> data.title
		<button @click.stop.emit('remove')> 'x'

# Using the todo-item inside another web component:
tag todo-app
	<self> for todo in todos3
		<todo-item data=todo>

# Rendering the todo-app with the imported todos array:
imba.mount <todo-app data=todos3>

<div[display:flex flex-direction:row color:blue]>
<div[opacity:0.5 @hover:1]> # conditional styles based on pseudostates.
<div[padding:3rem @lg:5rem @print:0]> # conditional styles based on media queries.

