
import math

class Station:

    """
    TODO
    """

    def __init__(self, name, id, total_bases, address, longitude, latitude):

        self.name = name
        self.id = id
        self.total_bases = total_bases
        self.address = address
        self.longitude = longitude 
        self.latitude = latitude
        
    def distance(self, longitude, latitude):

        lat1, lon1 = self.latitude, self.longitude
        lat2, lon2 = latitude, longitude
        radius = 6371  # km

        dlat = math.radians(lat2 - lat1)
        dlon = math.radians(lon2 - lon1)
        a = (math.sin(dlat / 2) * math.sin(dlat / 2) +
            math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) *
            math.sin(dlon / 2) * math.sin(dlon / 2))
        c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
        d = radius * c
        d = format(d,'.2f')
        return str(d) + " Kms"


class Community:
    """
    TODO
    """
    def __init__(self, stations):
          self.stations = stations


    def get_ids(self):
        out = []
        for station in self.stations:
            out.append(station.id)
        return out


    def station_search(self, station, search_type = "id"):
          out = None
          for sttn in self.stations:
               if search_type == "name":
                    if station.lower() in sttn.name.lower():
                         out = sttn
               elif search_type == "id":
                    if sttn.id == station:
                         out = sttn
          return out