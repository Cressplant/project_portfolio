
class Job {
  final String id;
  final String company;
  final String logo;
  final String role;
  final String contract;
  final String description;
  final DateTime start;
  final DateTime? end;
  final bool currentlyWorkingHere;


  Job({
    required this.id,
    required this.company,
    required this.logo,
    required this.role,
    required this.contract,
    required this.description,
    required this.start,
    required this.end,
    required this.currentlyWorkingHere
      });

  factory Job.fromMap(Map<String, dynamic> _map) {

    // print('running Job.fromMap(Map<String, dynamic> $_map)');

    return Job(
        id: _map['id'],
        company: _map['company'] ?? '',
        logo: _map['logo'],
        role: _map['role'] ?? '',
        contract: _map['contract'] ?? '',
        description: _map['description'] ?? '',
        start: DateTime.fromMillisecondsSinceEpoch(_map['start']),
        end: _map['end'] != null ? DateTime.fromMillisecondsSinceEpoch(_map['end']) : null,
        currentlyWorkingHere: _map['currentlyWorkingHere']
  );
  }
}
