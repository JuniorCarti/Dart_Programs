//Using StringBuffer for Efficient Multiple Concatenations
//for large operations
void main() {
  var buffer = StringBuffer();
  buffer.write("Hello");
  buffer.write(", ");
  buffer.write("World!");

  print(buffer.toString()); // Hello, World!
}
