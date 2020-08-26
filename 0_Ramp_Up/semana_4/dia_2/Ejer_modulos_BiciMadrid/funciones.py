import math

def dist_stations(sttn1, sttn2, community):
    
    #for sttn in community.stations:
    #    if sttn == sttn1:
    #        lat1, lon1 = sttn.latitude, sttn.longitude
    #    elif sttn == sttn2:
    #        lat2, lon2 = sttn.latitude, sttn.longitude

    #radius = 6371  # km

    #dlat = math.radians(lat2 - lat1)
    #dlon = math.radians(lon2 - lon1)
    #a = (math.sin(dlat / 2) * math.sin(dlat / 2) +
    #    math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) *
    #    math.sin(dlon / 2) * math.sin(dlon / 2))
    #c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    #d = radius * c
    #d = format(d,'.2f')
    #return str(d) + " Kms"

    out = sttn1.distance(sttn2)

    return out
