//: Playground - noun: a place where people can play

// Create a bit set that stores 140 bits
var bits = BitSet(size: 140)

// Initially, it looks like all zeros:
// 0000000000000000000000000000000000000000000000000000000000000000
// 0000000000000000000000000000000000000000000000000000000000000000
// 0000000000000000000000000000000000000000000000000000000000000000
print(bits)

bits[2] = true
bits[99] = true
bits[128] = true
bits.cardinality  // 3

// 0010000000000000000000000000000000000000000000000000000000000000
// 0000000000000000000000000000000000010000000000000000000000000000
// 1000000000000000000000000000000000000000000000000000000000000000
print(bits)

bits.setAll()
bits.cardinality  // 140

// 1111111111111111111111111111111111111111111111111111111111111111
// 1111111111111111111111111111111111111111111111111111111111111111
// 1111111111110000000000000000000000000000000000000000000000000000
print(bits)

print("")

// Bitwise operations

var a = BitSet(size: 4)
var b = BitSet(size: 8)

a.setAll()
a.cardinality  // 4

a[1] = false
a[2] = false
a[3] = false

b[2] = true
b[6] = true
b[7] = true

print(a)   // 1000000000000000000000000000000000000000000000000000000000000000
print(b)   // 0010001100000000000000000000000000000000000000000000000000000000

let c = a | b
c.size         // 8

print(c)   // 1010001100000000000000000000000000000000000000000000000000000000

a.cardinality  // 1
b.cardinality  // 3
c.cardinality  // 4

print("")
print(~a)  // 0111000000000000000000000000000000000000000000000000000000000000
print(~b)  // 1101110000000000000000000000000000000000000000000000000000000000
print(~c)  // 0101110000000000000000000000000000000000000000000000000000000000

(~a).cardinality  // 3
(~b).cardinality  // 5
(~c).cardinality  // 4

var z = BitSet(size: 66)
z.all0()        // true
z.all1()        // false

z[45] = true
z.any1()        // true
z.all0()        // false

z[45] = false
z.any1()        // false
z.all0()        // true

z[65] = true
z.any1()        // true

z.setAll()
z.all1()        // true

z[65] = false
z.all1()        // false

//var bigBits = BitSet(size: 10000)
//print(bigBits)

var smallBitSet = BitSet(size: 16)
smallBitSet[5] = true
smallBitSet[10] = true
print( smallBitSet >> 3 )
print( smallBitSet << 6 ) // one bit shifts off the end

var bigBitSet = BitSet( size: 120 )
bigBitSet[1] = true
bigBitSet[3] = true
bigBitSet[7] = true
bigBitSet[32] = true
bigBitSet[55] = true
bigBitSet[64] = true
bigBitSet[80] = true
print( bigBitSet )
print( bigBitSet << 32 )
print( bigBitSet << 64 )
print( bigBitSet >> 32 )
print( bigBitSet >> 64 )
