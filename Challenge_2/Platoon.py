import numpy as np

# define field
model = {}

# define field of autocar
field = {}
field["x1"] = "u*cos(r1)/(1+p*(r1**2))"
field["y1"] = "u*sin(r1)/(1+p*(r1**2))"
field["r1"] = "-l*r1*(q+2*r1**2)"
field["x2"] = "K*(x1-x2+10)*cos(r2)/(1+p*(r2**2))"
field["y2"] = "K*(x1-x2+10)*sin(r2)/(1+p*(r2**2))"
field["r2"] = "-l*r2*(q+2*r2**2)"
field["x3"] = "K*(x2-x3+10)*cos(r3)/(1+p*(r3**2))"
field["y3"] = "K*(x2-x3+10)*sin(r3)/(1+p*(r3**2))"
field["r3"] = "-l*r3*(q+2*r3**2)"
field["x4"] = "K*(x3-x4+10)*cos(r4)/(1+p*(r4**2))"
field["y4"] = "K*(x3-x4+10)*sin(r4)/(1+p*(r4**2))"
field["r4"] = "-l*r4*(q+2*r4**2)"


model["field"] = field

# define parameters
model["param"] =  {
    "K" : 0.3,
    "l" : 1,
    "p" : 1,
    "q" : 0.5,
}

# define input
model["inp"] = {
    "u" : [5, 5]
}

# define initial state bounds
initState = {}
# define initial state of autocar
initState = {}
s = 0.5
initState[ "x1" ] = [60, 70]
initState[ "y1" ] = [-0.1, 0.1]
initState[ "r1" ] = [s*-1, s*1]
initState[ "x2" ] = [40, 50]
initState[ "y2" ] = [-0.1, 0.1]
initState[ "r2" ] = [s*-1, s*1]
initState[ "x3" ] = [20, 30]
initState[ "y3" ] = [-0.1, 0.1]
initState[ "r3" ] = [s*-1, s*1]
initState[ "x4" ] = [0, 10]
initState[ "y4" ] = [-0.1, 0.1]
initState[ "r4" ] = [s*-1, s*1]

model["initState"] = initState

# directions of flowpipe bounds
dirmat = np.identity(12)*0;

dirmat[0,0] = 1
dirmat[0,3] = -1
dirmat[1,3] = 1
dirmat[1,6] = -1
dirmat[2,6] = 1
dirmat[2,9] = -1
dirmat[3,1] = 1
dirmat[4,4] = 1
dirmat[5,7] = 1
dirmat[6,10] = 1
dirmat[7,0] = 1;
dirmat[8,3] = 1;
dirmat[9,6] = 1;
dirmat[10,9] = 1;


model["directions"] = dirmat;


#====================================================================================================
# define hyperparameters
#====================================================================================================
hypar = {}
hypar[ "timeStep" ] = 0.01
hypar[ "maxTime" ] = 5
hypar[ "zonOrder" ] = 50
hypar[ "logDivs" ] = 1

#====================================================================================================
# set server
#====================================================================================================
server = {}
server["name"] = "amazon"
server["toolpath"] = "~/main/NonlinearReachability"


