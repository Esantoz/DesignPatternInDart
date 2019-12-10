class Singleton{
  static Singleton _instance;
  Singleton._(){

  }
  static Singleton getInstance(){
    if(_instance == null){
      _instance = Singleton._();
    }
    return _instance;
  }
}

main(){
  var a = Singleton.getInstance();
  print(a);

  var b = Singleton.getInstance();
  print(b);

  var c = Singleton.getInstance();
  print(c);
}