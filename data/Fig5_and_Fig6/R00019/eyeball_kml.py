
import simplekml
import numpy as np
import os

dat = np.genfromtxt('eyeball_codes.txt')

sand = np.where(dat[:,2]==1)[0]
gravel = np.where(dat[:,2]==3)[0]
sand_gravel = np.where(dat[:,2]==2)[0]
rock = np.where(dat[:,2]==5)[0]

for k in xrange(len(sand)):

   kml = simplekml.Kml()
   pnt = kml.newpoint(name=" ", coords=[( dat[sand[k],1], dat[sand[k],0] )])
   pnt.style.iconstyle.color = 'y' 
   kml.save(os.getcwd()+os.sep+'sand'+str(k)+'.kml')


for k in xrange(len(sand_gravel)):

   kml = simplekml.Kml()
   pnt = kml.newpoint(name=" ", coords=[( dat[sand_gravel[k],1], dat[sand_gravel[k],0] )])
   pnt.style.iconstyle.color =  'ffd4ff7f'
   kml.save(os.getcwd()+os.sep+'sand_gravel'+str(k)+'.kml')


for k in xrange(len(gravel)):

   kml = simplekml.Kml()
   pnt = kml.newpoint(name=" ", coords=[( dat[gravel[k],1], dat[gravel[k],0] )])
   pnt.style.iconstyle.color =  'ffd4ff7f'
   kml.save(os.getcwd()+os.sep+'gravel'+str(k)+'.kml')


for k in xrange(len(rock)):

   kml = simplekml.Kml()
   pnt = kml.newpoint(name=" ", coords=[( dat[rock[k],1], dat[rock[k],0] )])
   pnt.style.iconstyle.color = 'ff0000ff'
   kml.save(os.getcwd()+os.sep+'rock'+str(k)+'.kml')
