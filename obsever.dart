class Observer{
  void update(int dt){}
}
class Subject{
  List<Observer> obs;
  Subject(){
    obs = List();
  }
  void notify(int data){
    for(int i = 0;i < obs.length;i++){
      obs[i].update(data);
    }
  }
  void insert(Observer observer){
    obs.add(observer);
  }
  void remove(Observer observer){
    obs.remove(observer);
  }
}

class Obser implements Observer{
  int data;
  @override
  void update(int dt) {
    data = dt;
  }

  void printD(){
    print(data);
  }

}

main(){
  Obser ob1 = Obser();
  Obser ob2 = Obser();
  Obser ob3 = Obser();
  Obser ob4 = Obser();
  Subject sub = Subject();

  sub.insert(ob1);
  sub.insert(ob2);
  sub.insert(ob3);
  sub.insert(ob4);

  ob1.printD();
  ob2.printD();
  ob3.printD();
  ob4.printD();

  sub.notify(4);

  ob1.printD();
  ob2.printD();
  ob3.printD();
  ob4.printD();
}