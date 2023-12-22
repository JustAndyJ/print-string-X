func greet(name: String) {
  let arrayName = Array(name) 
// imprime la el mensaje
for i in 0..<arrayName.count { 
  //  array modificado
  var arrayWithSpaces = ""
  // lugar de las letras que se imprimiran 
  let index = i
  let secondIndex = arrayName.count - (i + 1) 
  // control primer y ultimo print() 
  if i == 0 || i == arrayName.count - 1 {
    print(name) 
  // control de los restantes print()
  } else {
    // modifica el array con los espacios
    for x in 0..<arrayName.count {
      switch x {
        case index: 
          arrayWithSpaces.append(arrayName[index]) 
        case secondIndex:
          arrayWithSpaces.append(arrayName[secondIndex])
        default:
          arrayWithSpaces.append(" ")
      }     
    }
    // imprime el array modificado
    print(String(arrayWithSpaces)) 
  }
 }
}
greet(name: "Hello World!")

