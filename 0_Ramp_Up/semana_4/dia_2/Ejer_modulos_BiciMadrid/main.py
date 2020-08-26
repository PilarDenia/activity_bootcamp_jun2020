import os 
os.getcwd()

from clases import Community, Station
from funciones import dist_stations
import pandas as pd

df = pd.read_excel("semana_4/dia_2/Ejer_modulos_BiciMadrid/2018_Julio_Bases_Bicimad_EMT.xlsx")

tot_est = []
for index, row in df.iterrows():
    estacion = Station(row[0], row[3], row[1], row[6], row[4], row[5])
    tot_est.append(estacion)

madrid = Community(tot_est)
print(madrid.stations[0].name)
