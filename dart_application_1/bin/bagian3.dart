void main(){
  //BAGIAN 3
//=======PRAKTIKUM 1=======
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  //langkah 3
 final List<dynamic> list = List.filled(5, null, growable: false);
  list[1] = "Hanifah Kurniasari";
  list[2] = "2341720254";
  print(list);

//=======PRAKTIKUM 2=======
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
//langkah 3
var names1 = <String>{};
Set<String> names2 = {}; 
var names3 = {}; 

print(names1);
print(names2);
print(names3);

//penjelasan: penggunaan tanda kurung kurawal {} secara default pada Dart akan membentuk Map kosong, bukan Set. Akibatnya, variabel names3 bertipe Map 
//sehingga tidak dapat menggunakan fungsi milik Set seperti .add() atau .addAll()

  names1.add("Hanifah");
  names1.add("Kurniasari");
  names2.addAll({"Hanifah Kurniasari", "2341720254"});
  print(names1);
  print(names2);


//=======PRAKTIKUM 3=======
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};
var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
//langkah 3
gifts['name'] = 'Hanifah Kurniasari';
  gifts['nim'] = '2341720254';

  nobleGases[20] = 'Hanifah Kurniasari';
  nobleGases[21] = '2341720254';

  mhs1['name'] = 'Hanifah Kurniasari';
  mhs1['nim'] = '2341720254';

  mhs2[99] = 'Hanifah Kurniasari';
  mhs2[100] = '2341720254';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);

//=======PRAKTIKUM 4=======
//langkah 1
  var listt = [1, 2, 3];
  var list22 = [0, ...listt];
  print(listt);    
  print(list22);
  print(list22.length);
//langkah 2
  var list1 = [1, 2, null];
  print(list1);

  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);
//langkah 3
 var nim = ['2', '3', '4', '1', '7', '2', '0', '2', '5', '4'];
  var listWithNIM = [0, ...nim];
  print(listWithNIM);
//langkah 4
 var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  promoActive = false;
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav2);
//langkah 5
//var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
//error: case hanya untuk switch, tidak bisa dipakai langsung di dalam list.
 var login = 'Manager';
  var nav22 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav22);

  login = 'User';
  var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav3);
//langkah 6
var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

//=======PRAKTIKUM 5=======
var record = ('first', a: 2, b: true, 'last');
  print(record);

//langkah 6
//=======TUGAS PRAKTIKUM=======
}
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
} 