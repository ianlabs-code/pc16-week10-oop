abstract class Vehicle {
  final String name;
  final int year;

  const Vehicle({required this.name, required this.year});

  String move();

  String describe() => '$name ($year)';
}

class Car extends Vehicle {
  final int doors;

  const Car({required super.name, required super.year, required this.doors});

  @override
  String move() => '$name drives on four wheels and has $doors doors.';
}

class Motorcycle extends Vehicle {
  final bool hasSidecar;

  const Motorcycle({
    required super.name,
    required super.year,
    required this.hasSidecar,
  });

  @override
  String move() {
    final String sidecarMessage = hasSidecar ? ' with a sidecar' : '';
    return '$name rides on two wheels$sidecarMessage.';
  }
}

mixin MaintenanceLogger {
  void logMaintenance(String vehicleName) {
    print('Maintenance recorded for $vehicleName.');
  }
}

class ServiceCenter with MaintenanceLogger {
  final String name;

  const ServiceCenter({required this.name});

  void serviceVehicle(Vehicle vehicle) {
    print('$name is servicing ${vehicle.name}.');
    logMaintenance(vehicle.name);
  }
}

void main() {
  print('=== Week 10: Object-Oriented Programming in Dart ===');

  final List<Vehicle> vehicles = [
    const Car(name: 'City Car', year: 2022, doors: 4),
    const Motorcycle(name: 'Street Motorcycle', year: 2024, hasSidecar: false),
  ];

  print('\n       --- Inheritance and polymorphism ---\n');
  for (final Vehicle vehicle in vehicles) {
    print(vehicle.describe());
    print(vehicle.move());
  }

  print('\n       --- Mixin outside the Vehicle hierarchy ---\n');
  const ServiceCenter serviceCenter = ServiceCenter(
    name: 'NTC Service Center',
  );
  serviceCenter.serviceVehicle(vehicles.first);
}
