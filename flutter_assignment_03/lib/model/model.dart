class Note {
  String _id;
  String _title;
  bool _status;
 
  Note(this._id, this._title, this._status);
 
  Note.map(dynamic obj) {
    this._id = obj['id'];
    this._title = obj['title'];
    this._status = obj['status'];
  }
 
  String get id => _id;
  String get title => _title;
  bool get status => _status;
 
  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['status'] = _status;
 
    return map;
  }
 
  Note.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._status = map['status'];
  }
}