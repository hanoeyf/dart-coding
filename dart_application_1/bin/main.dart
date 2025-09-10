void main() {

//PRAKTIKUM 1
  String test = "test2";
if (test == "test1") {
  print("Test1");
} else if (test == "test2") {
  print("Test2");
} else {
  print("Something else");
}
if (test == "test2") print("Test again");

//PRAKTIKUM 1 langkah 3
String test2 = "true";
if (test2 == "true") {
  print("Test1");
} else if (test2 == "test2") {
  print("Kebenaran");
} else {
  print("Bukan kebenaran");
}

//PRAKTIKUM 2
int counter = 0;
  while (counter < 33){
    print(counter);
    counter++;
    
  }
//PRAKTIKUM 2 langkah 3
  do {
    print(counter);
    counter++;
  } while (counter < 77);

//PRAKTIKUM 3
  for (int index =10; index<27; index++){
    if (index == 21)break;
    else if (index > 1 && index < 7) continue;
    print(index);
  }

//TUGAS PRAKTIKUM
  for (int i = 0; i <= 201; i++) {
    bool prima = true;

    if (i < 2) {
      prima = false; 
    } else {
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          prima = false;
          break;
        }
      }
    }
    if (prima) {
      print("$i -> Hanifah Kurniasari 2341720254");
    } else {
      print(i);
    }
}

}
