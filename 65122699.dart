class Person {
  late String _name;

  String get name => _name;
  set name(String value) => _name = value;
}

class Engine {
  late String _model;
  late double _speed;

  Engine({required String model, required double speed}) {
    _model = model;
    _speed = speed;
  }

  String get model => _model;
  set model(String value) => _model = value;

  double get speed => _speed;
  set speed(double value) => _speed = value;

  @override
  String toString() {
    return 'Engine Model: $_model, Engine Speed: $_speed km/h';
  }
}

class Car {
  late String _brand;
  late String _model;
  late Person _owner;
  late Engine _engine;

  Car({
    required String brand,
    required String model,
    required Person owner,
    required Engine engine,
  }) {
    _brand = brand;
    _model = model;
    _owner = owner;
    _engine = engine;
  }

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get model => _model;
  set model(String value) => _model = value;

  Person get owner => _owner;
  set owner(Person value) => _owner = value;

  Engine get engine => _engine;
  set engine(Engine value) => _engine = value;

  void displayCarInfo() {
    print(
        '\nOwner: ${owner.name}\nCar Brand: $_brand\nModel: $_model\n${_engine.toString()}');
  }

  void run() {
    print('The $_brand $_model is running at ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  late String _color;

  Honda({
    required String brand,
    required String model,
    required Person owner,
    required Engine engine,
    required String color,
  }) : super(
          brand: brand,
          model: model,
          owner: owner,
          engine: engine,
        ) {
    _color = color;
  }

  String get color => _color;
  set color(String value) => _color = value;

  
  void displayCarInfo() {
    print(
        '\nOwner: ${owner.name}\nCar Brand: $_brand\nModel: $_model\nColor: $_color\n${engine.toString()}');
  }

  void run() {
    print('The Honda $_model is running at 120 km/h');
  }
}

void main() {
 
  Person owner = Person();
  owner.name = 'Sutthirak Dithongoon';

  
  Engine carEngine = Engine(model: 'V8', speed: 200);

  Car car = Car(
    brand: 'Honda',
    model: 'MSX',
    owner: owner,
    engine: carEngine,
  );
  car.displayCarInfo();
  car.run();
  
  Engine hondaEngine = Engine(model: '1.5 liter 4-cylinder', speed: 120);

  Honda honda = Honda(
    brand: 'Honda',
    model: 'CBR',
    owner: owner,
    engine: hondaEngine,
    color: 'Green',
  );
  honda.displayCarInfo();
  honda.run();
}
