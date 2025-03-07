class Instruction {
  final double distance;
  final double? heading;
  final int sign;
  final List<int> interval;
  final String text;
  final int time;
  final String streetName;
  final double? lastHeading;

  Instruction({
    required this.distance,
    this.heading,
    required this.sign,
    required this.interval,
    required this.text,
    required this.time,
    required this.streetName,
    this.lastHeading,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) {
    return Instruction(
      distance: json['distance'],
      heading: json['heading'],
      sign: json['sign'],
      interval: List<int>.from(json['interval']),
      text: json['text'],
      time: json['time'],
      streetName: json['street_name'],
      lastHeading: json['last_heading'],
    );
  }
}