class EventsResponse {
  List<Reservation>? reservations;
  bool? error;

  EventsResponse({this.reservations, this.error});

  EventsResponse.fromJson(Map<String, dynamic> json) {
    if (json['reservations'] != null) {
      reservations = <Reservation>[];
      json['reservations'].forEach((v) {
        reservations!.add(Reservation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (reservations != null) {
      data['reservations'] = reservations!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reservation {
  int? id;
  String? startDate;
  String? endDate;
  List<Stays>? stays;
  List<UserTickets>? userTickets;

  Reservation(
      {this.id, this.startDate, this.endDate, this.stays, this.userTickets});

  Reservation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    if (json['stays'] != null) {
      stays = <Stays>[];
      json['stays'].forEach((v) {
        stays!.add(Stays.fromJson(v));
      });
    }
    if (json['user_tickets'] != null) {
      userTickets = <UserTickets>[];
      json['user_tickets'].forEach((v) {
        userTickets!.add(UserTickets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    if (stays != null) {
      data['stays'] = stays!.map((v) => v.toJson()).toList();
    }
    if (userTickets != null) {
      data['user_tickets'] = userTickets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stays {
  String? name;
  String? description;
  String? lat;
  String? lng;
  String? address;
  String? checkIn;
  String? checkOut;
  int? stars;
  List<String>? stayImages;
  String? amenities;
  List<Rooms>? rooms;

  Stays(
      {this.name,
      this.description,
      this.lat,
      this.lng,
      this.address,
      this.checkIn,
      this.checkOut,
      this.stars,
      this.stayImages,
      this.amenities,
      this.rooms});

  Stays.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    lat = json['lat'];
    lng = json['lng'];
    address = json['address'];
    checkIn = json['check_in'];
    checkOut = json['check_out'];
    stars = json['stars'];
    stayImages = json['stay_images'].cast<String>();
    amenities = json['amenities'];
    if (json['rooms'] != null) {
      rooms = <Rooms>[];
      json['rooms'].forEach((v) {
        rooms!.add(Rooms.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['lat'] = lat;
    data['lng'] = lng;
    data['address'] = address;
    data['check_in'] = checkIn;
    data['check_out'] = checkOut;
    data['stars'] = stars;
    data['stay_images'] = stayImages;
    data['amenities'] = amenities;
    if (rooms != null) {
      data['rooms'] = rooms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rooms {
  String? roomNumber;
  int? roomCapacity;
  String? roomTypeName;
  String? stayName;
  List<Guests>? guests;

  Rooms(
      {this.roomNumber,
      this.roomCapacity,
      this.roomTypeName,
      this.stayName,
      this.guests});

  Rooms.fromJson(Map<String, dynamic> json) {
    roomNumber = json['room_number'];
    roomCapacity = json['room_capacity'];
    roomTypeName = json['room_type_name'];
    stayName = json['stay_name'];
    if (json['guests'] != null) {
      guests = <Guests>[];
      json['guests'].forEach((v) {
        guests!.add(Guests.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['room_number'] = roomNumber;
    data['room_capacity'] = roomCapacity;
    data['room_type_name'] = roomTypeName;
    data['stay_name'] = stayName;
    if (guests != null) {
      data['guests'] = guests!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Guests {
  String? firstName;
  String? lastName;
  String? avatar;

  Guests({this.firstName, this.lastName, this.avatar});

  Guests.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;
    return data;
  }
}

class UserTickets {
  int? ticketId;
  String? seat;
  String? ticketSystemId;
  String? ticketTypeName;
  TicketUserData? ticketUserData;
  String? gate;

  UserTickets(
      {this.ticketId,
      this.seat,
      this.ticketSystemId,
      this.ticketTypeName,
      this.ticketUserData,
      this.gate});

  UserTickets.fromJson(Map<String, dynamic> json) {
    ticketId = json['ticket_id'];
    seat = json['seat'];
    ticketSystemId = json['ticket_system_id'];
    ticketTypeName = json['ticket_type_name'];
    ticketUserData = json['ticket_user_data'] != null
        ? TicketUserData.fromJson(json['ticket_user_data'])
        : null;
    gate = json['gate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ticket_id'] = ticketId;
    data['seat'] = seat;
    data['ticket_system_id'] = ticketSystemId;
    data['ticket_type_name'] = ticketTypeName;
    if (ticketUserData != null) {
      data['ticket_user_data'] = ticketUserData!.toJson();
    }
    data['gate'] = gate;
    return data;
  }
}

class TicketUserData {
  String? firstName;
  String? lastName;
  String? avatar;
  bool? isUser;

  TicketUserData({this.firstName, this.lastName, this.avatar, this.isUser});

  TicketUserData.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
    isUser = json['is_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;
    data['is_user'] = isUser;
    return data;
  }
}
